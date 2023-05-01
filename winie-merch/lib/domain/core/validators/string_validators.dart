part of 'validators.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const String pattern = r"^\S+@\S+\.\S+$";
  if (RegExp(pattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.string(
        StringValueFailure.invalidEmail(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
        ValueFailure.string(StringValueFailure.empty(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(
        ValueFailure.string(StringValueFailure.multiline(failedValure: input)));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.string(StringValueFailure.exceedingLength(
        failedValue: input, max: maxLength)));
  }
}
