// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_manager_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreDTO _$_$_StoreDTOFromJson(Map<String, dynamic> json) {
  return _$_StoreDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    address: json['address'] as String,
    dynamicLink: json['dynamicLink'] as String,
    createdAt: json['createdAt'] as String,
    cancelledOrders: json['cancelledOrders'] as int,
    completedOrders: json['completedOrders'] as int,
    currentbalance: (json['currentbalance'] as num).toDouble(),
    totalBalance: (json['totalBalance'] as num).toDouble(),
    merchmomoaccount: json['merchmomoaccount'] as String,
    network: json['network'] as String,
    live: json['live'] as bool,
    payoutRequested: json['payoutRequested'] as bool,
    waitTime: json['waitTime'] as String,
    owner: json['owner'] as String,
    partners:
        (json['partners'] as List<dynamic>).map((e) => e as String).toList(),
    partnerRequests: (json['partnerRequests'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_StoreDTOToJson(_$_StoreDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'dynamicLink': instance.dynamicLink,
      'createdAt': instance.createdAt,
      'cancelledOrders': instance.cancelledOrders,
      'completedOrders': instance.completedOrders,
      'currentbalance': instance.currentbalance,
      'totalBalance': instance.totalBalance,
      'merchmomoaccount': instance.merchmomoaccount,
      'network': instance.network,
      'live': instance.live,
      'payoutRequested': instance.payoutRequested,
      'waitTime': instance.waitTime,
      'owner': instance.owner,
      'partners': instance.partners,
      'partnerRequests': instance.partnerRequests,
    };

_$_ProductDTO _$_$_ProductDTOFromJson(Map<String, dynamic> json) {
  return _$_ProductDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    brand: json['brand'] as String?,
    description: json['description'] as String,
    category: json['category'] as String,
    subCategory: json['subCategory'] as String,
    storeId: json['storeId'] as String,
    variations: (json['variations'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    audiences:
        (json['audiences'] as List<dynamic>).map((e) => e as String).toList(),
    dynamicLink: json['dynamicLink'] as String,
    verified: json['verified'] as bool,
  );
}

Map<String, dynamic> _$_$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'storeId': instance.storeId,
      'variations': instance.variations,
      'audiences': instance.audiences,
      'dynamicLink': instance.dynamicLink,
      'verified': instance.verified,
    };

_$_ProductVarietyDTO _$_$_ProductVarietyDTOFromJson(Map<String, dynamic> json) {
  return _$_ProductVarietyDTO(
    id: json['id'] as String,
    price: json['price'] as String,
    quantity: json['quantity'],
    photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
    color: json['color'] as String,
    condition: json['condition'] as String,
    views: json['views'] as int?,
    buys: json['buys'] as int?,
    inCart: json['inCart'] as int?,
    ratingCount: json['ratingCount'] as int?,
    ratingTotal: (json['ratingTotal'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ProductVarietyDTOToJson(
        _$_ProductVarietyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'photos': instance.photos,
      'sizes': instance.sizes,
      'color': instance.color,
      'condition': instance.condition,
      'views': instance.views,
      'buys': instance.buys,
      'inCart': instance.inCart,
      'ratingCount': instance.ratingCount,
      'ratingTotal': instance.ratingTotal,
    };
