import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/cart/entities/cart_item.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

part 'cart_dto.freezed.dart';
part 'cart_dto.g.dart';

@freezed
abstract class CartItemDTO implements _$CartItemDTO {
  const CartItemDTO._();

  const factory CartItemDTO({
    required String id,
    required Map<String, dynamic> product,
    required Map<String, dynamic> variation,
    required dynamic quantity,
    required String size,
  }) = _CartItemDTO;

  factory CartItemDTO.fromDomain(CartItem cartItem) {
    return CartItemDTO(
      id: cartItem.id.getOrCrash(),
      product: CartProductDTO.fromDomain(cartItem.product).toJson(),
      variation: CartVariationDTO.fromDomain(cartItem.variation).toJson(),
      quantity: cartItem.quantity.toString(),
      size: cartItem.size,
    );
  }

  CartItem toDomain() {
    var quant;
    if (quantity.runtimeType == String) {
      quant = int.parse(quantity);
    } else {
      quant = quantity;
    }
    return CartItem(
      id: UniqueId.fromUniqueString(id),
      product: CartProductDTO.fromJson(product).toDomain(),
      variation: CartVariationDTO.fromJson(variation).toDomain(),
      quantity: quant,
      size: size,
    );
  }

  factory CartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CartItemDTOFromJson(json);

  factory CartItemDTO.fromFirestore(DocumentSnapshot doc) {
    return CartItemDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class CartProductDTO implements _$CartProductDTO {
  const CartProductDTO._();

  const factory CartProductDTO({
    required String id,
    required String name,
    required String storeId,
    required String dynamicLink,
  }) = _CartProductDTO;

  factory CartProductDTO.fromDomain(CartProduct product) {
    return CartProductDTO(
      id: product.id.getOrCrash(),
      name: product.name,
      storeId: product.storeId.getOrCrash(),
      dynamicLink: product.dynamicLink,
    );
  }

  CartProduct toDomain() {
    return CartProduct(
      id: UniqueId.fromUniqueString(id),
      name: name,
      storeId: UniqueId.fromUniqueString(storeId),
      dynamicLink: dynamicLink,
    );
  }

  factory CartProductDTO.fromJson(Map<String, dynamic> json) =>
      _$CartProductDTOFromJson(json);

  factory CartProductDTO.fromFirestore(DocumentSnapshot doc) {
    return CartProductDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class CartVariationDTO implements _$CartVariationDTO {
  const CartVariationDTO._();

  const factory CartVariationDTO({
    required String id,
    required String price,
    required dynamic quantity,
    required List<String> photos,
    required String color,
  }) = _VariationDTO;

  factory CartVariationDTO.fromDomain(CartVariation variation) {
    return CartVariationDTO(
      id: variation.id.getOrCrash(),
      price: variation.price,
      quantity: variation.quantity.toString(),
      photos: variation.photos,
      color: variation.color,
    );
  }

  CartVariation toDomain() {
    var quant;
    if (quantity.runtimeType == String) {
      quant = int.parse(quantity);
    } else {
      quant = quantity;
    }

    return CartVariation(
      id: UniqueId.fromUniqueString(id),
      price: price,
      quantity: quant,
      photos: photos,
      color: color,
    );
  }

  factory CartVariationDTO.fromJson(Map<String, dynamic> json) =>
      _$CartVariationDTOFromJson(json);

  factory CartVariationDTO.fromFirestore(DocumentSnapshot doc) {
    return CartVariationDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
