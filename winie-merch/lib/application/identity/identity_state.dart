part of 'identity_bloc.dart';

@freezed
abstract class IdentityState with _$IdentityState {
  const factory IdentityState.initial() = Initial;
  const factory IdentityState.loading() = Loading;
  const factory IdentityState.present(Identity identity) = Present;
  const factory IdentityState.notSetUp(User user) = NotSetUp;
  const factory IdentityState.retrieveFailure(IdentityFailure identityFailure) =
      RetrieveFailure;
}
