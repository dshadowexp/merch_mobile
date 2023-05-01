import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';

import 'entities/order.dart';

abstract class IOrderRepository {
  Stream<Either<StoreManagerFailure, List<SaleOrder>>> getStoreOrders(
      String storeId);
  Stream<Either<StoreManagerFailure, SaleOrder>> listenOrder(String orderId);
  Future<SaleOrder?> getStoreOrder(String orderId);
  Future<Either<StoreManagerFailure, Unit>> updateStatus(
      UniqueId orderId, String status);
  Future<void> cancelOrder(UniqueId orderId, String cancellationReason);
  Future<void> confirmOrder(UniqueId orderId);
  Future<void> readyOrder(UniqueId orderId, String pickLocation);
}
