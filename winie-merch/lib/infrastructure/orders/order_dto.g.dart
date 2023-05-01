// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDTO _$_$_OrderDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderDTO(
    id: json['id'] as String,
    driverId: json['driverId'] as String,
    orderId: json['orderId'] as String,
    identityId: json['identityId'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    name: json['name'] as String,
    contactNumber: json['contactNumber'] as String,
    storeName: json['storeName'] as String,
    merchantPhoneNumber: json['merchantPhoneNumber'] as String,
    dropLocation: json['dropLocation'] as String,
    pickLocation: json['pickLocation'] as String,
    deliveryType: json['deliveryType'] as String,
    estimatedDeliveryTime: json['estimatedDeliveryTime'] as String,
    createdAt: json['createdAt'] as String,
    subTotal: (json['subTotal'] as num).toDouble(),
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_OrderDTOToJson(_$_OrderDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driverId': instance.driverId,
      'orderId': instance.orderId,
      'identityId': instance.identityId,
      'items': instance.items,
      'name': instance.name,
      'contactNumber': instance.contactNumber,
      'storeName': instance.storeName,
      'merchantPhoneNumber': instance.merchantPhoneNumber,
      'dropLocation': instance.dropLocation,
      'pickLocation': instance.pickLocation,
      'deliveryType': instance.deliveryType,
      'estimatedDeliveryTime': instance.estimatedDeliveryTime,
      'createdAt': instance.createdAt,
      'subTotal': instance.subTotal,
      'status': instance.status,
    };
