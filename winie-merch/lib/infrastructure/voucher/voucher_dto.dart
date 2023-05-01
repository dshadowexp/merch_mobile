import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/vouchers/entities/voucher.dart';

part 'voucher_dto.freezed.dart';
part 'voucher_dto.g.dart';

@freezed
abstract class VoucherDTO implements _$VoucherDTO {
  const VoucherDTO._();

  const factory VoucherDTO({
    required int type,
    required int userLimit,
    required String storeId,
    required List<String> users,
    required String voucherName,
    required String expiryDate,
    required Map<String, dynamic> payload,
  }) = _VoucherDTO;

  factory VoucherDTO.fromDomain(Voucher voucher) {
    return VoucherDTO(
      type: voucher.type,
      expiryDate: voucher.expiryDate,
      userLimit: voucher.userLimit,
      storeId: voucher.storeId,
      voucherName: voucher.voucherName,
      payload: voucher.payload,
      users: voucher.users,
    );
  }
  Voucher toDomain() {
    return Voucher(
      type: type,
      payload: payload,
      storeId: storeId,
      users: users,
      expiryDate: expiryDate,
      userLimit: userLimit,
      voucherName: voucherName,
    );
  }

  factory VoucherDTO.fromJson(Map<String, dynamic> json) =>
      _$VoucherDTOFromJson(json);
}
