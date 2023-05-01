import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winie_merch/domain/transactions/i_transaction_repository.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart' as t;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:winie_merch/domain/transactions/transaction_failure.dart';
import 'package:winie_merch/infrastructure/core/firestore_helpers.dart';

import 'transaction_dto.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  FirebaseFirestore _firestore;

  TransactionRepository(this._firestore);

  @override
  Future<Either<TransactionFailure, dynamic>> charge(
      t.Transaction transaction) async {
    try {
      final response = await http.post(
        Uri.parse(
            "https://us-central1-winie-merch.cloudfunctions.net/makePaystackPayment"),
        headers: {"Content-Type": "application/json"},
        body: json.encode(
          {
            "amount": double.parse(transaction.amount),
            "email": "${transaction.accountNumber}@email.com",
            "phoneNumber": transaction.accountNumber,
            "serviceProvider": transaction.code,
          },
        ),
      );

      final body = json.decode(response.body);
      return right(body['data']);
    } catch (e) {
      return left(TransactionFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionFailure, dynamic>> submitOTP(
      String referenceId, String otp) async {
    try {
      final response = await http.post(
        Uri.parse(
            "https://us-central1-winie-merch.cloudfunctions.net/submitPaystackOTP"),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "otp": otp,
          "reference": referenceId,
        }),
      );

      if (response.statusCode == 200) {
        return right("");
      } else {
        return left(TransactionFailure.serverError());
      }
    } catch (e) {
      return left(TransactionFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> verify(String reference) async {
    try {
      final response = await http.post(
        Uri.parse(
            "https://us-central1-winie-merch.cloudfunctions.net/verifyPaystackPayment?reference=$reference"),
        headers: {
          "Content-Type": "application/json",
        },
      );
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(
          TransactionFailure.serverError(),
        );
      }
    } catch (e) {
      return left(
        TransactionFailure.serverError(),
      );
    }
  }

  Stream<Either<TransactionFailure, Map<String, String>>> listenPayment(
      String referenceId) async* {
    yield* _firestore
        .collection('transactions')
        .doc(referenceId)
        .snapshots()
        .map((snapshot) {
      return right<TransactionFailure, Map<String, String>>(
        {
          'status': (snapshot.data() as Map<String, dynamic>)['status'],
          'referenceId':
              (snapshot.data() as Map<String, dynamic>)['referenceId'],
        },
      );
    });
  }

  @override
  Future<Either<TransactionFailure, String>> transfer(
      String storeId, String amount) async {
    try {
      final userDoc = await (await _firestore.userDocument()).get();
      final storeId = (userDoc.data() as Map<String, dynamic>)['storeId'];
      String url =
          "https://us-central1-winie-merch.cloudfunctions.net/makePaystackTransfer";
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "type": "merchant",
          "id": storeId,
          "amount": double.parse(amount),
        }),
      );

      if (response.statusCode == 200) {
        var body = json.decode(response.body);
        return right(body['message']);
      } else {
        return left(TransactionFailure.serverError());
      }
    } catch (e) {
      return left(TransactionFailure.serverError());
    }
  }

  @override
  Future<List<t.TransactionHistory>> loadHistory(String storeId) async {
    try {
      final historyDocs = await _firestore
          .collection('stores')
          .doc(storeId)
          .collection('transactions')
          .orderBy('createdAt', descending: true)
          .get();
      List<t.TransactionHistory> orderHistoryList = [];
      for (var historyDoc in historyDocs.docs) {
        orderHistoryList
            .add(TransactionHistoryDTO.fromFirestore(historyDoc).toDomain());
      }
      return orderHistoryList;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> sendAccountVerificationOTP(String accountNumber) async {
    try {
      var headers = {
        'Authorization': 'Token 02953de9a1b266bffa1d8d673b5c145c2b2eb74d'
      };
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://d7networks.com/api/verifier/send'));
      request.fields.addAll({
        'mobile': accountNumber,
        'sender_id': 'Winie Merch',
        'message': 'Your Winie Merch OTP code is {code}',
        'expiry': '900'
      });

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        return true;
      } else {}
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> verificyAccount(String otpId, String otpCode) async {
    try {
      return true;
    } catch (e) {
      return false;
    }
  }
}
