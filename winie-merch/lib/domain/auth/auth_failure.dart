import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidPhoneNumber() = InvalidPhoneNumber;
  const factory AuthFailure.invalideCodeCredential() = InvalidCodeCredential;
  const factory AuthFailure.sessionExpired() = SessionExpired;
  const factory AuthFailure.tooManyRequests() = TooManyRequests;
  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;
  const factory AuthFailure.serverError() = ServerError;
}
