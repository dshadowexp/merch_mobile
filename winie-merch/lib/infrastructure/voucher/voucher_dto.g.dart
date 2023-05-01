// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VoucherDTO _$_$_VoucherDTOFromJson(Map<String, dynamic> json) {
  return _$_VoucherDTO(
    type: json['type'] as int,
    userLimit: json['userLimit'] as int,
    storeId: json['storeId'] as String,
    users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
    voucherName: json['voucherName'] as String,
    expiryDate: json['expiryDate'] as String,
    payload: json['payload'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_VoucherDTOToJson(_$_VoucherDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userLimit': instance.userLimit,
      'storeId': instance.storeId,
      'users': instance.users,
      'voucherName': instance.voucherName,
      'expiryDate': instance.expiryDate,
      'payload': instance.payload,
    };
