import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart' as t;

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
abstract class TransactionDTO implements _$TransactionDTO {
  const TransactionDTO._();

  const factory TransactionDTO({
    required String id,
    required String accountNumber,
    required String code,
    required String amount,
    required String currency,
    required int purpose,
  }) = _TransactionDTO;

  factory TransactionDTO.fromDomain(t.Transaction transaction) {
    return TransactionDTO(
      id: transaction.id.getOrCrash(),
      accountNumber: transaction.accountNumber,
      code: transaction.code,
      amount: transaction.amount.toString(),
      currency: transaction.currency,
      purpose: transaction.purpose,
    );
  }

  t.Transaction toDomain() {
    return t.Transaction(
      id: UniqueId.fromUniqueString(id),
      accountNumber: accountNumber,
      code: code,
      amount: amount,
      currency: currency,
      purpose: purpose,
    );
  }

  factory TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionDTOFromJson(json);
}

@freezed
abstract class TransactionHistoryDTO implements _$TransactionHistoryDTO {
  const TransactionHistoryDTO._();

  const factory TransactionHistoryDTO({
    required int type,
    required String actionId,
    required String createdAt,
    required String description,
    required double amount,
  }) = _OrderHistoryDTO;

  t.TransactionHistory toDomain() {
    return t.TransactionHistory(
      type: type,
      actionId: actionId,
      description: description,
      createdAt: createdAt,
      amount: amount,
    );
  }

  factory TransactionHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryDTOFromJson(json);

  factory TransactionHistoryDTO.fromFirestore(DocumentSnapshot doc) {
    return TransactionHistoryDTO.fromJson(doc.data() as Map<String, dynamic>);
  }
}

class Bank {
  final String name;
  final String code;

  Bank(this.name, this.code);

  @override
  String toString() {
    return 'Bank(name: $name, detail: $code)';
  }
}
