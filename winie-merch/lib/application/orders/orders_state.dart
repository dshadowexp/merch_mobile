part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loadInProgress() = _LoadInProgress;
  const factory OrdersState.loadFailure(StoreManagerFailure orderFailure) =
      _LoadFailure;
  const factory OrdersState.loadOrders(List<SaleOrder> orders) = _LoadOrders;
}
