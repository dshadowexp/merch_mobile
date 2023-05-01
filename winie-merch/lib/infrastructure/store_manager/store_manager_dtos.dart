import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winie_merch/domain/auth/value_objects.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_manager_dtos.freezed.dart';
part 'store_manager_dtos.g.dart';

@freezed
abstract class StoreDTO implements _$StoreDTO {
  const StoreDTO._();

  const factory StoreDTO({
    required String id,
    required String name,
    required String phoneNumber,
    required String address,
    required String dynamicLink,
    required String createdAt,
    required int cancelledOrders,
    required int completedOrders,
    required double currentbalance,
    required double totalBalance,
    required String merchmomoaccount,
    required String network,
    required bool live,
    required bool payoutRequested,
    required String waitTime,
    required String owner,
    required List<String> partners,
    required List<String>? partnerRequests,
  }) = _StoreDTO;

  factory StoreDTO.fromDomain(Store store) {
    return StoreDTO(
      id: store.id.getOrCrash(),
      name: store.name,
      phoneNumber: store.phoneNumber.getOrCrash(),
      address: store.address,
      dynamicLink: store.dynamicLink,
      createdAt: store.createdAt,
      cancelledOrders: store.cancelledOrders,
      completedOrders: store.completedOrders,
      currentbalance: store.currentbalance,
      merchmomoaccount: store.merchmomoaccount,
      network: store.network,
      totalBalance: store.totalBalance,
      live: store.live,
      payoutRequested: store.payoutRequested,
      waitTime: store.waitTime,
      owner: store.owner,
      partners: store.partners,
      partnerRequests: store.partnerRequests,
    );
  }

  Store toDomain() {
    return Store(
      id: UniqueId.fromUniqueString(id),
      name: name,
      phoneNumber: PhoneNumber(phoneNumber),
      address: address,
      dynamicLink: dynamicLink,
      createdAt: createdAt,
      live: live,
      payoutRequested: payoutRequested,
      cancelledOrders: cancelledOrders,
      completedOrders: completedOrders,
      currentbalance: currentbalance,
      merchmomoaccount: merchmomoaccount,
      network: network,
      totalBalance: totalBalance,
      waitTime: waitTime,
      owner: owner,
      partners: partners,
      partnerRequests: partnerRequests,
    );
  }

  factory StoreDTO.fromJson(Map<String, dynamic> json) =>
      _$StoreDTOFromJson(json);

  factory StoreDTO.fromFirestore(DocumentSnapshot doc) {
    return StoreDTO.fromJson(doc.data() as Map<String, dynamic>);
  }
}

@freezed
abstract class ProductDTO implements _$ProductDTO {
  const ProductDTO._();

  const factory ProductDTO({
    required String id,
    required String name,
    required String? brand,
    required String description,
    required String category,
    required String subCategory,
    required String storeId,
    required List<Map<String, dynamic>> variations,
    required List<String> audiences,
    required String dynamicLink,
    required bool verified,
  }) = _ProductDTO;

  factory ProductDTO.fromDomain(Product product) {
    return ProductDTO(
      id: product.id.getOrCrash(),
      name: product.name,
      brand: product.brand,
      description: product.description,
      variations: product.variations
          .map((variety) => VariationDTO.fromDomain(variety).toJson())
          .toList(),
      category: product.category,
      subCategory: product.subCategory,
      storeId: product.storeId.getOrCrash(),
      audiences: product.audiences,
      dynamicLink: product.dynamicLink,
      verified: product.verified!,
    );
  }

  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id),
      name: name,
      brand: brand,
      description: description,
      variations: variations
          .map((variety) => VariationDTO.fromJson(variety).toDomain())
          .toList(),
      category: category,
      subCategory: subCategory,
      storeId: UniqueId.fromUniqueString(storeId),
      dynamicLink: dynamicLink,
      audiences: audiences,
      verified: verified,
    );
  }

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

  factory ProductDTO.fromFirestore(DocumentSnapshot doc) {
    return ProductDTO.fromJson(doc.data() as Map<String, dynamic>);
  }
}

@freezed
abstract class VariationDTO implements _$VariationDTO {
  const VariationDTO._();

  const factory VariationDTO({
    required String id,
    required String price,
    required dynamic quantity,
    required List<String> photos,
    required List<String> sizes,
    required String color,
    required String condition,
    int? views,
    int? buys,
    int? inCart,
    int? ratingCount,
    double? ratingTotal,
  }) = _ProductVarietyDTO;

  factory VariationDTO.fromDomain(Variation variation) {
    return VariationDTO(
      id: variation.id.getOrCrash(),
      price: variation.price,
      quantity: variation.quantity,
      photos: variation.photos,
      sizes: variation.sizes,
      color: variation.color,
      condition: variation.condition,
      views: variation.views,
      buys: variation.buys,
      inCart: variation.inCart,
      ratingCount: variation.ratingCount,
      ratingTotal: variation.ratingTotal,
    );
  }

  Variation toDomain() {
    var quant;
    if (quantity.runtimeType == String) {
      quant = int.parse(quantity);
    } else {
      quant = quantity;
    }

    if (quant < 0) {}
    return Variation(
      id: UniqueId.fromUniqueString(id),
      price: price,
      quantity: quant,
      photos: photos,
      sizes: sizes,
      color: color,
      condition: condition,
      views: views,
      buys: buys,
      inCart: inCart,
      ratingCount: ratingCount,
      ratingTotal: ratingTotal,
    );
  }

  factory VariationDTO.fromJson(Map<String, dynamic> json) =>
      _$VariationDTOFromJson(json);

  factory VariationDTO.fromFirestore(DocumentSnapshot doc) {
    return VariationDTO.fromJson(doc.data() as Map<String, dynamic>);
  }
}
