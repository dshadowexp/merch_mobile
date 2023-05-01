import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';
import 'package:winie_merch/infrastructure/orders/order_dto.dart';
import 'package:winie_merch/infrastructure/core/firestore_helpers.dart';

import 'order_dto.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  FirebaseFirestore _firestore;

  OrderRepository(this._firestore);

  @override
  Stream<Either<StoreManagerFailure, List<SaleOrder>>> getStoreOrders(
      String storeId) async* {
    final orderDoc = _firestore.collection('storeOrders');

    yield* orderDoc
        .where(
          'storeId',
          isEqualTo: storeId,
        )
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<StoreManagerFailure, List<SaleOrder>>(
            snapshot.docs.map((doc) {
              return SaleOrderDTO.fromFirestore(doc).toDomain();
            }).toList(),
          ),
        );
  }

  @override
  Stream<Either<StoreManagerFailure, SaleOrder>> listenOrder(
      String orderId) async* {
    yield* _firestore.collection('storeOrders').doc(orderId).snapshots().map(
      (snapshot) {
        if (snapshot.exists) {
          return right(SaleOrderDTO.fromFirestore(snapshot).toDomain());
        } else {
          return left(StoreManagerFailure.noStores());
        }
      },
    );
  }

  @override
  Future<SaleOrder?> getStoreOrder(String orderId) async {
    try {
      final orderDoc = _firestore.collection('storeOrders').doc(orderId);
      final order = await orderDoc.get();

      if (order.exists) {
        return SaleOrderDTO.fromFirestore(order).toDomain();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Either<StoreManagerFailure, Unit>> updateStatus(
      UniqueId orderId, String status) async {
    try {
      final storeOrdersDoc = _firestore.collection('storeOrders');

      await storeOrdersDoc.doc(orderId.getOrCrash()).update(
        {
          'status': status,
          'modifiedAt': DateTime.now().toIso8601String(),
        },
      );

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('CANNOT CONNECT TO SERVER')) {
        return left(StoreManagerFailure.serverError());
      } else {
        return left(StoreManagerFailure.serverError());
      }
    }
  }

  @override
  Future<void> confirmOrder(UniqueId orderId) async {
    try {
      final storeOrdersDoc = _firestore.collection('storeOrders');

      await storeOrdersDoc.doc(orderId.getOrCrash()).update(
        {
          'status': 'confirmed',
          'confirmedTime': DateTime.now().toIso8601String(),
          'modifiedAt': DateTime.now().toIso8601String(),
        },
      );
    } catch (e) {}
  }

  @override
  Future<bool> cancelOrder(
      UniqueId storeOrderId, String cancellationReason) async {
    try {
      final userDoc = _firestore.collection('storeOrders');
      await userDoc.doc(storeOrderId.getOrCrash()).update({
        'status': 'cancelled',
        'cancelActor': 'merchant',
        'cancellationReason': cancellationReason,
        'cancelTime': DateTime.now().toIso8601String(),
        'modifiedAt': DateTime.now().toIso8601String(),
      });

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> readyOrder(UniqueId orderId, String pickLocation) async {
    try {
      final storeOrdersDoc = _firestore.collection('storeOrders');
      await storeOrdersDoc.doc(orderId.getOrCrash()).update(
        {'status': 'ready'},
      );
    } catch (e) {}
  }
}
