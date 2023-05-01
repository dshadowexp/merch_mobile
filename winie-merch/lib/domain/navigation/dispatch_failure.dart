import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispatch_failure.freezed.dart';

@freezed
abstract class DispatchFailure with _$DispatchFailure {
  const factory DispatchFailure.unexpected() = _Unexpected;
  const factory DispatchFailure.insufficientPermission() =
      _InsufficientPersission;
  const factory DispatchFailure.serverError() = _ServerError;
}
