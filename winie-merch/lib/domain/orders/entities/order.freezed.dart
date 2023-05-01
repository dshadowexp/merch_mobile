// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaleOrderTearOff {
  const _$SaleOrderTearOff();

  _SaleOrder call(
      {required UniqueId id,
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
      required String status}) {
    return _SaleOrder(
      id: id,
      orderId: orderId,
      identityId: identityId,
      items: items,
      driverId: driverId,
      name: name,
      contactNumber: contactNumber,
      storeName: storeName,
      merchantPhoneNumber: merchantPhoneNumber,
      dropLocation: dropLocation,
      pickLocation: pickLocation,
      estimatedDeliveryTime: estimatedDeliveryTime,
      deliveryType: deliveryType,
      createdAt: createdAt,
      subTotal: subTotal,
      status: status,
    );
  }
}

/// @nodoc
const $SaleOrder = _$SaleOrderTearOff();

/// @nodoc
mixin _$SaleOrder {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get orderId => throw _privateConstructorUsedError;
  UniqueId get identityId => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;
  String get driverId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  String get merchantPhoneNumber => throw _privateConstructorUsedError;
  String get dropLocation => throw _privateConstructorUsedError;
  String get pickLocation => throw _privateConstructorUsedError;
  String get estimatedDeliveryTime => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleOrderCopyWith<SaleOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleOrderCopyWith<$Res> {
  factory $SaleOrderCopyWith(SaleOrder value, $Res Function(SaleOrder) then) =
      _$SaleOrderCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId orderId,
      UniqueId identityId,
      List<CartItem> items,
      String driverId,
      String name,
      String contactNumber,
      String storeName,
      String merchantPhoneNumber,
      String dropLocation,
      String pickLocation,
      String estimatedDeliveryTime,
      String deliveryType,
      String createdAt,
      double subTotal,
      String status});
}

/// @nodoc
class _$SaleOrderCopyWithImpl<$Res> implements $SaleOrderCopyWith<$Res> {
  _$SaleOrderCopyWithImpl(this._value, this._then);

  final SaleOrder _value;
  // ignore: unused_field
  final $Res Function(SaleOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? identityId = freezed,
    Object? items = freezed,
    Object? driverId = freezed,
    Object? name = freezed,
    Object? contactNumber = freezed,
    Object? storeName = freezed,
    Object? merchantPhoneNumber = freezed,
    Object? dropLocation = freezed,
    Object? pickLocation = freezed,
    Object? estimatedDeliveryTime = freezed,
    Object? deliveryType = freezed,
    Object? createdAt = freezed,
    Object? subTotal = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      identityId: identityId == freezed
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantPhoneNumber: merchantPhoneNumber == freezed
          ? _value.merchantPhoneNumber
          : merchantPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dropLocation: dropLocation == freezed
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickLocation: pickLocation == freezed
          ? _value.pickLocation
          : pickLocation // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: estimatedDeliveryTime == freezed
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SaleOrderCopyWith<$Res> implements $SaleOrderCopyWith<$Res> {
  factory _$SaleOrderCopyWith(
          _SaleOrder value, $Res Function(_SaleOrder) then) =
      __$SaleOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId orderId,
      UniqueId identityId,
      List<CartItem> items,
      String driverId,
      String name,
      String contactNumber,
      String storeName,
      String merchantPhoneNumber,
      String dropLocation,
      String pickLocation,
      String estimatedDeliveryTime,
      String deliveryType,
      String createdAt,
      double subTotal,
      String status});
}

/// @nodoc
class __$SaleOrderCopyWithImpl<$Res> extends _$SaleOrderCopyWithImpl<$Res>
    implements _$SaleOrderCopyWith<$Res> {
  __$SaleOrderCopyWithImpl(_SaleOrder _value, $Res Function(_SaleOrder) _then)
      : super(_value, (v) => _then(v as _SaleOrder));

  @override
  _SaleOrder get _value => super._value as _SaleOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? identityId = freezed,
    Object? items = freezed,
    Object? driverId = freezed,
    Object? name = freezed,
    Object? contactNumber = freezed,
    Object? storeName = freezed,
    Object? merchantPhoneNumber = freezed,
    Object? dropLocation = freezed,
    Object? pickLocation = freezed,
    Object? estimatedDeliveryTime = freezed,
    Object? deliveryType = freezed,
    Object? createdAt = freezed,
    Object? subTotal = freezed,
    Object? status = freezed,
  }) {
    return _then(_SaleOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      identityId: identityId == freezed
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantPhoneNumber: merchantPhoneNumber == freezed
          ? _value.merchantPhoneNumber
          : merchantPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dropLocation: dropLocation == freezed
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickLocation: pickLocation == freezed
          ? _value.pickLocation
          : pickLocation // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: estimatedDeliveryTime == freezed
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaleOrder extends _SaleOrder {
  const _$_SaleOrder(
      {required this.id,
      required this.orderId,
      required this.identityId,
      required this.items,
      required this.driverId,
      required this.name,
      required this.contactNumber,
      required this.storeName,
      required this.merchantPhoneNumber,
      required this.dropLocation,
      required this.pickLocation,
      required this.estimatedDeliveryTime,
      required this.deliveryType,
      required this.createdAt,
      required this.subTotal,
      required this.status})
      : super._();

  @override
  final UniqueId id;
  @override
  final UniqueId orderId;
  @override
  final UniqueId identityId;
  @override
  final List<CartItem> items;
  @override
  final String driverId;
  @override
  final String name;
  @override
  final String contactNumber;
  @override
  final String storeName;
  @override
  final String merchantPhoneNumber;
  @override
  final String dropLocation;
  @override
  final String pickLocation;
  @override
  final String estimatedDeliveryTime;
  @override
  final String deliveryType;
  @override
  final String createdAt;
  @override
  final double subTotal;
  @override
  final String status;

  @override
  String toString() {
    return 'SaleOrder(id: $id, orderId: $orderId, identityId: $identityId, items: $items, driverId: $driverId, name: $name, contactNumber: $contactNumber, storeName: $storeName, merchantPhoneNumber: $merchantPhoneNumber, dropLocation: $dropLocation, pickLocation: $pickLocation, estimatedDeliveryTime: $estimatedDeliveryTime, deliveryType: $deliveryType, createdAt: $createdAt, subTotal: $subTotal, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaleOrder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.identityId, identityId) ||
                const DeepCollectionEquality()
                    .equals(other.identityId, identityId)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.contactNumber, contactNumber) ||
                const DeepCollectionEquality()
                    .equals(other.contactNumber, contactNumber)) &&
            (identical(other.storeName, storeName) ||
                const DeepCollectionEquality()
                    .equals(other.storeName, storeName)) &&
            (identical(other.merchantPhoneNumber, merchantPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.merchantPhoneNumber, merchantPhoneNumber)) &&
            (identical(other.dropLocation, dropLocation) ||
                const DeepCollectionEquality()
                    .equals(other.dropLocation, dropLocation)) &&
            (identical(other.pickLocation, pickLocation) ||
                const DeepCollectionEquality()
                    .equals(other.pickLocation, pickLocation)) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                const DeepCollectionEquality().equals(
                    other.estimatedDeliveryTime, estimatedDeliveryTime)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.subTotal, subTotal) ||
                const DeepCollectionEquality()
                    .equals(other.subTotal, subTotal)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(identityId) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(storeName) ^
      const DeepCollectionEquality().hash(merchantPhoneNumber) ^
      const DeepCollectionEquality().hash(dropLocation) ^
      const DeepCollectionEquality().hash(pickLocation) ^
      const DeepCollectionEquality().hash(estimatedDeliveryTime) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$SaleOrderCopyWith<_SaleOrder> get copyWith =>
      __$SaleOrderCopyWithImpl<_SaleOrder>(this, _$identity);
}

abstract class _SaleOrder extends SaleOrder {
  const factory _SaleOrder(
      {required UniqueId id,
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
      required String status}) = _$_SaleOrder;
  const _SaleOrder._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  UniqueId get orderId => throw _privateConstructorUsedError;
  @override
  UniqueId get identityId => throw _privateConstructorUsedError;
  @override
  List<CartItem> get items => throw _privateConstructorUsedError;
  @override
  String get driverId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get contactNumber => throw _privateConstructorUsedError;
  @override
  String get storeName => throw _privateConstructorUsedError;
  @override
  String get merchantPhoneNumber => throw _privateConstructorUsedError;
  @override
  String get dropLocation => throw _privateConstructorUsedError;
  @override
  String get pickLocation => throw _privateConstructorUsedError;
  @override
  String get estimatedDeliveryTime => throw _privateConstructorUsedError;
  @override
  String get deliveryType => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  double get subTotal => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SaleOrderCopyWith<_SaleOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
