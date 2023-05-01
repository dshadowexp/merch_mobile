import 'package:winie_merch/domain/transactions/entities/transaction.dart';
import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/transactions/transaction_failure.dart';

abstract class ITransactionRepository {
  Stream<Either<TransactionFailure, Map<String, String>>> listenPayment(
      String referenceId);
  Future<Either<TransactionFailure, dynamic>> charge(Transaction transaction);
  Future<Either<TransactionFailure, dynamic>> submitOTP(
      String referenceId, String otp);
  Future<Either<TransactionFailure, Unit>> verify(String reference);
  Future<Either<TransactionFailure, String>> transfer(
      String storeId, String amount);
  Future<List<TransactionHistory>> loadHistory(String storeId);
  Future<bool> sendAccountVerificationOTP(String accountNumber);
  Future<bool> verificyAccount(String otpId, String otpCode);
}
