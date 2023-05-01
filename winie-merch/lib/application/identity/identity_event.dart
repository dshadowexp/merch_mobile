part of 'identity_bloc.dart';

@freezed
abstract class IdentityEvent with _$IdentityEvent {
  const factory IdentityEvent.getIdentity() = Retrieved;
  const factory IdentityEvent.identityRetrieved(
      Either<IdentityFailure, Identity> failureOrIdentity) = IdentityRetrieved;
}
