import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/cart/entities/cart_item.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

part 'order.freezed.dart';

@freezed
abstract class SaleOrder implements _$SaleOrder {
  const SaleOrder._();

  const factory SaleOrder({
    required UniqueId id,
    required UniqueId orderId,
    required UniqueId identityId,
    required List<CartItem> items,
    required String driverId,
    required String name,
    required String contactNumber,
    required String storeName,
    required String merchantPhoneNumber,
    required String dropLocation,
    required String pickLocation,
    required String estimatedDeliveryTime,
    required String deliveryType,
    required String createdAt,
    required double subTotal,
    required String status,
  }) = _SaleOrder;
}
