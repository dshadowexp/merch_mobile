part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.watchOrdersStarted(String storeId) =
      _WatchOrdersStarted;
  const factory OrdersEvent.ordersReceived(
          Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess) =
      _OrdersReceived;
}
