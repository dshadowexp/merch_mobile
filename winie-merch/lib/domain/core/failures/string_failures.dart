part of 'failures.dart';

@freezed
abstract class StringValueFailure<T> with _$StringValueFailure<T> {
  const factory StringValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory StringValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory StringValueFailure.multiline({
    required T failedValure,
  }) = Multiline<T>;

  const factory StringValueFailure.fileNotAvailable({
    required T failedValue,
  }) = FileNotAvailable<T>;

  const factory StringValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
}
