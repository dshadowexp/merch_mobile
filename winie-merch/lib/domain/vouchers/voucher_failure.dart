import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_failure.freezed.dart';

@freezed
abstract class VoucherFailure with _$VoucherFailure {
  const factory VoucherFailure.delayed() = Delayed;
  const factory VoucherFailure.errorMessage(String message) = ErrorMessage;
  const factory VoucherFailure.serverError() = ServerError;
}
