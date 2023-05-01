part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;
  const factory SignInFormEvent.verificationCodeChanged(
      String codeVerification) = VerificationCodeChange;
  const factory SignInFormEvent.verifyPhoneNumberPressed() =
      VerifyPhoneNumberPressed;
  const factory SignInFormEvent.authenticateVerificationCode() =
      AuthenticateVerificationCode;
  const factory SignInFormEvent.resendAuthenticationCode() =
      ResendAuthenticationCode;
  const factory SignInFormEvent.setErrorFunction(Function errorFunction) =
      SetErrorFunction;
  const factory SignInFormEvent.setSuccessFunction(Function successFunction) =
      SetSuccessFunction;
  const factory SignInFormEvent.authReceived(
    Either<AuthFailure, User> authFailureOrSuccess,
  ) = AuthReceived;
}
