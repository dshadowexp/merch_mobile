import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/infrastructure/cart/cart_dto.dart';

part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

@freezed
abstract class SaleOrderDTO implements _$SaleOrderDTO {
  const SaleOrderDTO._();

  const factory SaleOrderDTO({
    required String id,
    required String driverId,
    required String orderId,
    required String identityId,
    required List<Map<String, dynamic>> items,
    required String name,
    required String contactNumber,
    required String storeName,
    required String merchantPhoneNumber,
    required String dropLocation,
    required String pickLocation,
    required String deliveryType,
    required String estimatedDeliveryTime,
    required String createdAt,
    required double subTotal,
    required String status,
  }) = _OrderDTO;

  factory SaleOrderDTO.fromDomain(SaleOrder order) {
    return SaleOrderDTO(
      id: order.id.getOrCrash(),
      driverId: order.driverId,
      orderId: order.orderId.getOrCrash(),
      identityId: order.identityId.getOrCrash(),
      items: order.items
          .map((item) => CartItemDTO.fromDomain(item).toJson())
          .toList(),
      name: order.name,
      contactNumber: order.contactNumber,
      storeName: order.storeName,
      merchantPhoneNumber: order.merchantPhoneNumber,
      dropLocation: order.dropLocation,
      pickLocation: order.pickLocation,
      deliveryType: order.deliveryType,
      estimatedDeliveryTime: order.estimatedDeliveryTime,
      createdAt: order.createdAt,
      subTotal: order.subTotal,
      status: order.status,
    );
  }

  SaleOrder toDomain() {
    return SaleOrder(
      id: UniqueId.fromUniqueString(id),
      driverId: driverId,
      orderId: UniqueId.fromUniqueString(orderId),
      identityId: UniqueId.fromUniqueString(identityId),
      items:
          items.map((item) => CartItemDTO.fromJson(item).toDomain()).toList(),
      name: name,
      contactNumber: contactNumber,
      storeName: storeName,
      merchantPhoneNumber: merchantPhoneNumber,
      dropLocation: dropLocation,
      pickLocation: pickLocation,
      deliveryType: deliveryType,
      estimatedDeliveryTime: estimatedDeliveryTime,
      createdAt: createdAt,
      subTotal: subTotal,
      status: status,
    );
  }

  factory SaleOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$SaleOrderDTOFromJson(json);

  factory SaleOrderDTO.fromFirestore(doc) {
    return SaleOrderDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
