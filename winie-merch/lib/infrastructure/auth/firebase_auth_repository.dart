import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:winie_merch/domain/auth/auth_failure.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/domain/auth/value_objects.dart';
import 'package:winie_merch/domain/auth/entities/user.dart' as user;
import 'package:winie_merch/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthRepository)
class FirebaseAuthRepository implements IAuthRepository {
  FirebaseAuth _firebaseAuth;
  String _verificationId = '';
  int? _forceCode = -1;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<Option<user.User>> getSignedInUser() async {
    User? firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomain());
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, user.User>> authenticateVerificationCode({
    required VerificationCode verificationCode,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: _verificationId,
            smsCode: verificationCode.getOrCrash()),
      );

      return right(translateCredentialToUser(userCredential.user!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalideCodeCredential());
      } else if (e.code == "operation-not-allowed") {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == "session-expired" || e.code == "code-expired") {
        return left(const AuthFailure.sessionExpired());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  void autoRetrieve(String verificationId) async {
    this._verificationId = verificationId;
  }

  void verificationCompleted(PhoneAuthCredential phoneAuth) async {}

  void smsCodeSent(String verificationId, int forceCodeResend) async {}

  Either<AuthFailure, String> errorHandling(FirebaseAuthException exception) {
    if (exception.code == 'invalid-phone-number') {
      return left(AuthFailure.invalidPhoneNumber());
    } else if (exception.code == 'too-many-requests') {
      return left(AuthFailure.tooManyRequests());
    } else if (exception.code == 'operation-not-allowed') {
      return left(AuthFailure.operationNotAllowed());
    } else {
      return left(AuthFailure.tooManyRequests());
    }
  }

  void verifiedFailed(FirebaseAuthException exception) async {}

  @override
  Future<Either<AuthFailure, String>> verifyPhoneNumber(
      {required PhoneNumber phoneNumber,
      required Function errorFunction,
      required Function successFunction}) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber.getOrCrash(),
        timeout: const Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: (exception) {
          if (exception.code == 'invalid-phone-number') {
            errorFunction("Type in a Valid Phone Number");
          } else if (exception.code == 'too-many-requests') {
            errorFunction("Too Many Requests: Retry Later");
          } else if (exception.code == 'operation-not-allowed') {
            errorFunction("Operation Is Not Allowed");
          } else if (exception.code == 'web-context-cancelled') {
            errorFunction("Authentication Canceled: Try Again");
          } else {
            errorFunction("Network Error: Check Connection");
          }
        },
        codeSent: (String verificationId, int? forceCodeResend) {
          this._verificationId = verificationId;
          this._forceCode = forceCodeResend;
          successFunction();
        },
        codeAutoRetrievalTimeout: autoRetrieve,
      );

      return right(this._verificationId);
    } on FirebaseAuthException catch (exception) {
      return errorHandling(exception);
    }
  }

  @override
  Future<Either<AuthFailure, String>> resendVerificationCode(
      {required PhoneNumber phoneNumber}) async {
    if (_forceCode == -1) {
      return left(AuthFailure.operationNotAllowed());
    }
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber.getOrCrash(),
        verificationCompleted: verificationCompleted,
        verificationFailed: verifiedFailed,
        codeSent: (String verificationId, int? resendToken) {
          this._verificationId = verificationId;
          this._forceCode = resendToken;
        },
        codeAutoRetrievalTimeout: autoRetrieve,
        forceResendingToken: _forceCode,
      );
      return right('success');
    } on FirebaseAuthException catch (exception) {
      return errorHandling(exception);
    }
  }

  @override
  Future<Either<AuthFailure, user.User>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return right(translateCredentialToUser(userCredential.user!));
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, user.User>> signInWithApple() async {
    try {
      final rawNonce = generateNonce();
      final nonce = sha256ofString(rawNonce);

      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(oauthCredential);

      return right(translateCredentialToUser(userCredential.user!));
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  user.User translateCredentialToUser(User credential) {
    return user.User(
      id: credential.uid,
      userName: credential.displayName ?? '',
      email: credential.email ?? '',
      phoneNumber: credential.phoneNumber ?? '',
      photoUrl: credential.photoURL ?? '',
    );
  }
}
