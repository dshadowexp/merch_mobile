part of 's_order_bloc.dart';

@freezed
abstract class SOrderState with _$SOrderState {
  const factory SOrderState.initial() = _Initial;
  const factory SOrderState.loadInProgress() = _LoadInProgress;
  const factory SOrderState.loadFailure(StoreManagerFailure orderFailure) =
      _LoadFailure;
  const factory SOrderState.loadSuccess(SaleOrder order) = _LoadSuccess;
}
