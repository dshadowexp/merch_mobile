part of 'auth_flow_bloc.dart';

@freezed
abstract class AuthFlowEvent with _$AuthFlowEvent {
  const factory AuthFlowEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthFlowEvent.signedOut() = SignedOut;
}
