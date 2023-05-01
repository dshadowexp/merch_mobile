import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/identity/identity_failure.dart';
part 'identity_event.dart';
part 'identity_state.dart';

part 'identity_bloc.freezed.dart';

@injectable
class IdentityBloc extends Bloc<IdentityEvent, IdentityState> {
  final IIdentityRepository _iIdentityRepository;

  IdentityBloc(this._iIdentityRepository) : super(IdentityState.initial());

  StreamSubscription<Either<IdentityFailure, Identity>>?
      _identityStreamSubscription;

  @override
  Stream<IdentityState> mapEventToState(
    IdentityEvent event,
  ) async* {
    yield* event.map(
      getIdentity: (e) async* {
        yield IdentityState.loading();

        await _identityStreamSubscription?.cancel();
        _identityStreamSubscription =
            _iIdentityRepository.retrieve().listen((failureOrSuccessIdentity) {
          add(IdentityEvent.identityRetrieved(failureOrSuccessIdentity));
        });
      },
      identityRetrieved: (e) async* {
        yield e.failureOrIdentity.fold(
          (f) {
            return f.map(
              unexpected: (_) {
                return IdentityState.retrieveFailure(f);
              },
              notSetUp: (failure) {
                return IdentityState.notSetUp(failure.user);
              },
            );
          },
          (identity) {
            return IdentityState.present(identity);
          },
        );
      },
    );
  }
}
