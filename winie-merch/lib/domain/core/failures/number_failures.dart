part of 'failures.dart';

@freezed
abstract class NumberValueFailure<T> with _$NumberValueFailure<T> {
  const factory NumberValueFailure.invalidPhoneNumber({
    required String failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory NumberValueFailure.invalidAuthenticationCode({
    required String failedValue,
  }) = InvalidAuthenticationCode<T>;

  const factory NumberValueFailure.numberBelowMinimum({
    required int failedValue,
  }) = NumberBelowMinimum<T>;
}
