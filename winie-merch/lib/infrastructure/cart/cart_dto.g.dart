// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemDTO _$_$_CartItemDTOFromJson(Map<String, dynamic> json) {
  return _$_CartItemDTO(
    id: json['id'] as String,
    product: json['product'] as Map<String, dynamic>,
    variation: json['variation'] as Map<String, dynamic>,
    quantity: json['quantity'],
    size: json['size'] as String,
  );
}

Map<String, dynamic> _$_$_CartItemDTOToJson(_$_CartItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'size': instance.size,
    };

_$_CartProductDTO _$_$_CartProductDTOFromJson(Map<String, dynamic> json) {
  return _$_CartProductDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    storeId: json['storeId'] as String,
    dynamicLink: json['dynamicLink'] as String,
  );
}

Map<String, dynamic> _$_$_CartProductDTOToJson(_$_CartProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'storeId': instance.storeId,
      'dynamicLink': instance.dynamicLink,
    };

_$_VariationDTO _$_$_VariationDTOFromJson(Map<String, dynamic> json) {
  return _$_VariationDTO(
    id: json['id'] as String,
    price: json['price'] as String,
    quantity: json['quantity'],
    photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$_$_VariationDTOToJson(_$_VariationDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'photos': instance.photos,
      'color': instance.color,
    };
