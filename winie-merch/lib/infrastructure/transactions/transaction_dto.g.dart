// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDTO _$_$_TransactionDTOFromJson(Map<String, dynamic> json) {
  return _$_TransactionDTO(
    id: json['id'] as String,
    accountNumber: json['accountNumber'] as String,
    code: json['code'] as String,
    amount: json['amount'] as String,
    currency: json['currency'] as String,
    purpose: json['purpose'] as int,
  );
}

Map<String, dynamic> _$_$_TransactionDTOToJson(_$_TransactionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountNumber': instance.accountNumber,
      'code': instance.code,
      'amount': instance.amount,
      'currency': instance.currency,
      'purpose': instance.purpose,
    };

_$_OrderHistoryDTO _$_$_OrderHistoryDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderHistoryDTO(
    type: json['type'] as int,
    actionId: json['actionId'] as String,
    createdAt: json['createdAt'] as String,
    description: json['description'] as String,
    amount: (json['amount'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_OrderHistoryDTOToJson(_$_OrderHistoryDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'actionId': instance.actionId,
      'createdAt': instance.createdAt,
      'description': instance.description,
      'amount': instance.amount,
    };
