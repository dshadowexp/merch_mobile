part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required PhoneNumber phoneNumber,
    required VerificationCode verificationCode,
    required Function errorFunction,
    required Function successFunction,
    required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => _SignInFormState(
        phoneNumber: PhoneNumber(''),
        verificationCode: VerificationCode(''),
        errorFunction: () {},
        successFunction: () {},
        authFailureOrSuccessOption: none(),
      );
}
