import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/auth/value_objects.dart';
import 'auth_failure.dart';

abstract class IAuthRepository {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, User>> signInWithGoogle();

  Future<Either<AuthFailure, User>> signInWithApple();

  Future<Either<AuthFailure, String>> verifyPhoneNumber({
    required PhoneNumber phoneNumber,
    required Function errorFunction,
    required Function successFunction,
  });

  Future<Either<AuthFailure, String>> resendVerificationCode({
    required PhoneNumber phoneNumber,
  });

  Future<Either<AuthFailure, User>> authenticateVerificationCode({
    required VerificationCode verificationCode,
  });

  Future<void> signOut();
}
