import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
abstract class Transaction implements _$Transaction {
  const Transaction._();

  const factory Transaction({
    required UniqueId id,
    required String accountNumber,
    required String amount,
    required String currency,
    required String code,
    required int purpose,
  }) = _Transaction;

  factory Transaction.empty() => Transaction(
        id: UniqueId(),
        accountNumber: '',
        code: '',
        amount: '0.0',
        currency: 'GHS',
        purpose: 0,
      );
}

@freezed
abstract class TransactionHistory implements _$TransactionHistory {
  const TransactionHistory._();

  const factory TransactionHistory({
    required int type,
    required String actionId,
    required String createdAt,
    required String description,
    required double amount,
  }) = _TransactionHistory;
}
