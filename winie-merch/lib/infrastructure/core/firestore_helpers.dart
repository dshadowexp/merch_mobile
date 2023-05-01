import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/domain/core/errors/errors.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthRepository>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.id);
  }
}

extension DocumentReferenceX on DocumentReference {}
