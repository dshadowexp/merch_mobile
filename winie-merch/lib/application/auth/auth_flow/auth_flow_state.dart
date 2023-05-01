part of 'auth_flow_bloc.dart';

@freezed
abstract class AuthFlowState with _$AuthFlowState {
  const factory AuthFlowState.initial() = Initial;
  const factory AuthFlowState.authenticated(User user) = Authenticated;
  const factory AuthFlowState.unauthenticated() = Unauthenticated;
}
