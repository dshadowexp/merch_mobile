import 'package:firebase_auth/firebase_auth.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/auth/entities/user.dart' as domain;

extension FirebaseUserDomainX on User {
  domain.User toDomain() {
    return domain.User(
        id: phoneNumber != null && phoneNumber!.isNotEmpty
            ? phoneNumber!.substring(1)
            : uid,
        phoneNumber: phoneNumber ?? '',
        email: email ?? '',
        userName: displayName ?? '',
        photoUrl: photoURL ?? '');
  }
}
