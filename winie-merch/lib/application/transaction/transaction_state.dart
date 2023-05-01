part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.transactionSuccess(String referenceId) =
      _TransactionSuccess;
  const factory TransactionState.transactionProcessing(dynamic payload) =
      _TransactionProcessing;
  const factory TransactionState.transactionLoading() = _TransactionLoading;
  const factory TransactionState.transactionFailure(
      TransactionFailure transactionFailure) = _TransactionFailure;
}
