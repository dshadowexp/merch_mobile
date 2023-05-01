part of 's_order_bloc.dart';

@freezed
abstract class SOrderEvent with _$SOrderEvent {
  const factory SOrderEvent.watchOrder(String orderId) = _WatchOrder;
  const factory SOrderEvent.orderReceived(
          Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess) =
      _OrderReceived;
}
