part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState{
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _LoadInProgress;
  const factory ProductState.loadSuccess(List<Product> products) = _LoadSuccess;
  const factory ProductState.loadFailure(StoreManagerFailure productFailure) =_LoadFailure;
}
