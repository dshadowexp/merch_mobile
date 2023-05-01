import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/failures/failures.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

class VerificationCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory VerificationCode(String input) {
    assert(input != null);
    return VerificationCode._(validateVerificationCode(input));
  }

  const VerificationCode._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}
