import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_failure.freezed.dart';

@freezed
abstract class CartFailure with _$CartFailure {
  const factory CartFailure.itemAlreadyInCart() = ItemAlreadyInCart;
  const factory CartFailure.emptyCartOperation() = EmptyCartOperation;
}
