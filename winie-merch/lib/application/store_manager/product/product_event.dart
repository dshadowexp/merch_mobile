part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.watchProductsStarted(String storeId) =
      _WatchProductsStarted;
  const factory ProductEvent.productsReceived(
          Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess) =
      _ProductsReceived;
}
