part of 'validators.dart';

Either<ValueFailure<String>, String> validateIntrinsicType(
    String input, List<String> intrinsicList) {
  if (intrinsicList.contains(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.object(
          ObjectValueFailure.invalidIntrinsicType(failedValue: input)),
    );
  }
}
