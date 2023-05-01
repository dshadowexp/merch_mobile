import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:winie_merch/domain/auth/auth_failure.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _iAuthRepository;

  SignInFormBloc(this._iAuthRepository) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneNumber),
          authFailureOrSuccessOption: none(),
        );
      },
      verificationCodeChanged: (e) async* {
        yield state.copyWith(
          verificationCode: VerificationCode(e.codeVerification),
          authFailureOrSuccessOption: none(),
        );
      },
      setErrorFunction: (e) async* {
        yield state.copyWith(
          errorFunction: e.errorFunction,
          authFailureOrSuccessOption: none(),
        );
      },
      setSuccessFunction: (e) async* {
        yield state.copyWith(
          successFunction: e.successFunction,
          authFailureOrSuccessOption: none(),
        );
      },
      verifyPhoneNumberPressed: (e) async* {
        if (state.phoneNumber.isValid()) {
          await _iAuthRepository.verifyPhoneNumber(
            phoneNumber: state.phoneNumber,
            errorFunction: state.errorFunction,
            successFunction: state.successFunction,
          );
        } else {
          state.errorFunction('Phone number is not valid');
        }
      },
      authenticateVerificationCode: (e) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
        );

        Either<AuthFailure, User>? failureOrSuccess;

        if (state.verificationCode.isValid()) {
          failureOrSuccess =
              await _iAuthRepository.authenticateVerificationCode(
            verificationCode: state.verificationCode,
          );

          add(SignInFormEvent.authReceived(failureOrSuccess));
        } else {
          yield state.copyWith(
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
      resendAuthenticationCode: (e) async* {
        await _iAuthRepository.resendVerificationCode(
            phoneNumber: state.phoneNumber);
      },
      authReceived: (e) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(e.authFailureOrSuccess),
        );
      },
    );
  }
}
