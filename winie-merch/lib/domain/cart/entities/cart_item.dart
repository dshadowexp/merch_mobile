import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/store_manager/value_objects.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem implements _$CartItem {
  const CartItem._();

  const factory CartItem({
    required UniqueId id,
    required CartProduct product,
    required CartVariation variation,
    required int quantity,
    required String size,
  }) = _CartItem;
}

@freezed
abstract class CartProduct implements _$CartProduct {
  const CartProduct._();

  const factory CartProduct({
    required UniqueId id,
    required String name,
    required UniqueId storeId,
    required String dynamicLink,
  }) = _CartProduct;
}

@freezed
abstract class CartVariation implements _$CartVariation {
  const CartVariation._();

  const factory CartVariation({
    required UniqueId id,
    required String color,
    required String price,
    required int quantity,
    required List<String> photos,
  }) = _CartVariation;
}
