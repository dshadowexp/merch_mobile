part of 'failures.dart';

@freezed
abstract class ObjectValueFailure<T> with _$ObjectValueFailure<T> {
  const factory ObjectValueFailure.invalidIntrinsicType({
    required String failedValue,
  }) = InvalidIntrinsicType<T>;
}
