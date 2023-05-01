import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';

@freezed
abstract class Voucher implements _$Voucher {
  const Voucher._();

  const factory Voucher({
    required int type,
    required int userLimit,
    required String storeId,
    required List<String> users,
    required String voucherName,
    required String expiryDate,
    required Map<String, dynamic> payload,
  }) = _Voucher;
}
