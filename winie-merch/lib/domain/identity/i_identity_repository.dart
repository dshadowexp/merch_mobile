import 'package:dartz/dartz.dart';

import 'entities/identity.dart';
import 'identity_failure.dart';

abstract class IIdentityRepository {
  Stream<Either<IdentityFailure, Identity>> retrieve();
  Future<Either<IdentityFailure, Identity>> getUser(String id);
  Future<Either<IdentityFailure, Unit>> create(
      Map<String, dynamic> accountData);
  Future<Either<IdentityFailure, Unit>> updateIdentity(
      Map<String, dynamic> identityField);
  Future<Either<IdentityFailure, dynamic>> getField(String fieldName);
  Future<void> suggestToUs(String suggestion);
  Future<void> submitBugReport(
      String issue, String description, String filePath);
}
