import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';

part 'auth_flow_bloc.freezed.dart';

part 'auth_flow_event.dart';
part 'auth_flow_state.dart';

@injectable
class AuthFlowBloc extends Bloc<AuthFlowEvent, AuthFlowState> {
  final IAuthRepository _authRepository;

  AuthFlowBloc(this._authRepository) : super(AuthFlowState.initial());

  @override
  Stream<AuthFlowState> mapEventToState(
    AuthFlowEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authRepository.getSignedInUser();
        yield userOption.fold(
          () => const AuthFlowState.unauthenticated(),
          (r) => AuthFlowState.authenticated(r),
        );
      },
      signedOut: (e) async* {
        yield AuthFlowState.unauthenticated();
        await _authRepository.signOut();
      },
    );
  }
}
