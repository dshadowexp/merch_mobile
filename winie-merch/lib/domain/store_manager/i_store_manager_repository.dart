import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';
import 'entities/product.dart';
import 'entities/store.dart';

abstract class IStoreManagerRepository {
  Stream<Either<StoreManagerFailure, Store>> watchStore(String storeId);
  Stream<Either<StoreManagerFailure, List<Product>>> watchStoreProducts(
      String storeId);

  Future<List<Store>> loadUserStores();
  Future<bool> joinStoreAsPartner(String storeId);
  Future<bool> acceptPartner(String storeId, String partnerId);
  Future<bool> declinePartner(String storeId, String partnerId);

  Future<Store?> retrieveStore(String storeId);
  Future<Either<StoreManagerFailure, Unit>> updateStore(
      Map<String, dynamic> store);

  Future<bool> createProduct(Product product);
  Future<bool> updateProduct(Product product);
  Future<bool> deleteProduct(Product product);
  Future<bool> addVariation(UniqueId productId, Variation variation);
  Future<bool> updateVariation(UniqueId productId, Variation variation);
  Future<bool> deleteVariation(UniqueId productId, UniqueId variationId);
}
