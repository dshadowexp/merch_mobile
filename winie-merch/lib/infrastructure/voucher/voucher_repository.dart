import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winie_merch/domain/Vouchers/i_voucher_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/vouchers/entities/voucher.dart';
// import 'package:http/http.dart' as http;

import 'voucher_dto.dart';

@LazySingleton(as: IVoucherRepository)
class VoucherRepository {
  FirebaseFirestore _firestore;

  VoucherRepository(this._firestore);

  List<Voucher> vouchersHistory = [];

  Future<List<Voucher>> loadVouchers(String storeId) async {
    try {
      final historyDocs = await _firestore
          .collection('vouchers')
          .where('storeId', isEqualTo: storeId)
          .get();
      List<Voucher> orderHistoryList = [];

      for (var historyDoc in historyDocs.docs) {
        orderHistoryList.add(VoucherDTO.fromJson(historyDoc.data()).toDomain());
      }
      vouchersHistory = orderHistoryList;
      return orderHistoryList;
    } catch (e) {
      return [];
    }
  }

  Future<void> addVoucher(Map<String, dynamic> data) async {
    try {
      await _firestore
          .collection('vouchers')
          .doc(data["voucherName"])
          .set(data);
      await loadVouchers(data["storeId"]);
    } catch (e) {}
  }

  Future<void> editVoucher(Map<String, dynamic> data) async {
    try {
      await _firestore
          .collection('vouchers')
          .doc(data["voucherName"])
          .update(data);
      await loadVouchers(data["storeId"]);
    } catch (e) {}
  }

  Future<void> deleteVoucher(String id, storeId) async {
    try {
      await _firestore.collection('vouchers').doc(id).delete();
      await loadVouchers(storeId);
    } catch (e) {}
  }
}
