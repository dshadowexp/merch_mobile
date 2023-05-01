part of 'validators.dart';

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const String pattern =
      r"^\s*(?:\'?\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{3,4})(?: *x(\d+))?\s*\'?$";
  if (RegExp(pattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.number(
        NumberValueFailure.invalidPhoneNumber(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateVerificationCode(String input) {
  const String pattern = r'^\d{6}';
  if (RegExp(pattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.number(
        NumberValueFailure.invalidAuthenticationCode(failedValue: input)));
  }
}

Either<ValueFailure<int>, int> validateNotLessThan(int input, int min) {
  if (input >= min) {
    return right(input);
  } else {
    return left(ValueFailure.number(
        NumberValueFailure.numberBelowMinimum(failedValue: input)));
  }
}
