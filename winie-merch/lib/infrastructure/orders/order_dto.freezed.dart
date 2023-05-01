// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleOrderDTO _$SaleOrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
class _$SaleOrderDTOTearOff {
  const _$SaleOrderDTOTearOff();

  _OrderDTO call(
      {required String id,
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
      required String status}) {
    return _OrderDTO(
      id: id,
      driverId: driverId,
      orderId: orderId,
      identityId: identityId,
      items: items,
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

  SaleOrderDTO fromJson(Map<String, Object> json) {
    return SaleOrderDTO.fromJson(json);
  }
}

/// @nodoc
const $SaleOrderDTO = _$SaleOrderDTOTearOff();

/// @nodoc
mixin _$SaleOrderDTO {
  String get id => throw _privateConstructorUsedError;
  String get driverId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get identityId => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get contactNumber => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  String get merchantPhoneNumber => throw _privateConstructorUsedError;
  String get dropLocation => throw _privateConstructorUsedError;
  String get pickLocation => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get estimatedDeliveryTime => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleOrderDTOCopyWith<SaleOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleOrderDTOCopyWith<$Res> {
  factory $SaleOrderDTOCopyWith(
          SaleOrderDTO value, $Res Function(SaleOrderDTO) then) =
      _$SaleOrderDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String driverId,
      String orderId,
      String identityId,
      List<Map<String, dynamic>> items,
      String name,
      String contactNumber,
      String storeName,
      String merchantPhoneNumber,
      String dropLocation,
      String pickLocation,
      String deliveryType,
      String estimatedDeliveryTime,
      String createdAt,
      double subTotal,
      String status});
}

/// @nodoc
class _$SaleOrderDTOCopyWithImpl<$Res> implements $SaleOrderDTOCopyWith<$Res> {
  _$SaleOrderDTOCopyWithImpl(this._value, this._then);

  final SaleOrderDTO _value;
  // ignore: unused_field
  final $Res Function(SaleOrderDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? orderId = freezed,
    Object? identityId = freezed,
    Object? items = freezed,
    Object? name = freezed,
    Object? contactNumber = freezed,
    Object? storeName = freezed,
    Object? merchantPhoneNumber = freezed,
    Object? dropLocation = freezed,
    Object? pickLocation = freezed,
    Object? deliveryType = freezed,
    Object? estimatedDeliveryTime = freezed,
    Object? createdAt = freezed,
    Object? subTotal = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      identityId: identityId == freezed
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: estimatedDeliveryTime == freezed
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$OrderDTOCopyWith<$Res> implements $SaleOrderDTOCopyWith<$Res> {
  factory _$OrderDTOCopyWith(_OrderDTO value, $Res Function(_OrderDTO) then) =
      __$OrderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String driverId,
      String orderId,
      String identityId,
      List<Map<String, dynamic>> items,
      String name,
      String contactNumber,
      String storeName,
      String merchantPhoneNumber,
      String dropLocation,
      String pickLocation,
      String deliveryType,
      String estimatedDeliveryTime,
      String createdAt,
      double subTotal,
      String status});
}

/// @nodoc
class __$OrderDTOCopyWithImpl<$Res> extends _$SaleOrderDTOCopyWithImpl<$Res>
    implements _$OrderDTOCopyWith<$Res> {
  __$OrderDTOCopyWithImpl(_OrderDTO _value, $Res Function(_OrderDTO) _then)
      : super(_value, (v) => _then(v as _OrderDTO));

  @override
  _OrderDTO get _value => super._value as _OrderDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? orderId = freezed,
    Object? identityId = freezed,
    Object? items = freezed,
    Object? name = freezed,
    Object? contactNumber = freezed,
    Object? storeName = freezed,
    Object? merchantPhoneNumber = freezed,
    Object? dropLocation = freezed,
    Object? pickLocation = freezed,
    Object? deliveryType = freezed,
    Object? estimatedDeliveryTime = freezed,
    Object? createdAt = freezed,
    Object? subTotal = freezed,
    Object? status = freezed,
  }) {
    return _then(_OrderDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      identityId: identityId == freezed
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDeliveryTime: estimatedDeliveryTime == freezed
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$_OrderDTO extends _OrderDTO with DiagnosticableTreeMixin {
  const _$_OrderDTO(
      {required this.id,
      required this.driverId,
      required this.orderId,
      required this.identityId,
      required this.items,
      required this.name,
      required this.contactNumber,
      required this.storeName,
      required this.merchantPhoneNumber,
      required this.dropLocation,
      required this.pickLocation,
      required this.deliveryType,
      required this.estimatedDeliveryTime,
      required this.createdAt,
      required this.subTotal,
      required this.status})
      : super._();

  factory _$_OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDTOFromJson(json);

  @override
  final String id;
  @override
  final String driverId;
  @override
  final String orderId;
  @override
  final String identityId;
  @override
  final List<Map<String, dynamic>> items;
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
  final String deliveryType;
  @override
  final String estimatedDeliveryTime;
  @override
  final String createdAt;
  @override
  final double subTotal;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaleOrderDTO(id: $id, driverId: $driverId, orderId: $orderId, identityId: $identityId, items: $items, name: $name, contactNumber: $contactNumber, storeName: $storeName, merchantPhoneNumber: $merchantPhoneNumber, dropLocation: $dropLocation, pickLocation: $pickLocation, deliveryType: $deliveryType, estimatedDeliveryTime: $estimatedDeliveryTime, createdAt: $createdAt, subTotal: $subTotal, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaleOrderDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('driverId', driverId))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('identityId', identityId))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('contactNumber', contactNumber))
      ..add(DiagnosticsProperty('storeName', storeName))
      ..add(DiagnosticsProperty('merchantPhoneNumber', merchantPhoneNumber))
      ..add(DiagnosticsProperty('dropLocation', dropLocation))
      ..add(DiagnosticsProperty('pickLocation', pickLocation))
      ..add(DiagnosticsProperty('deliveryType', deliveryType))
      ..add(DiagnosticsProperty('estimatedDeliveryTime', estimatedDeliveryTime))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('subTotal', subTotal))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.identityId, identityId) ||
                const DeepCollectionEquality()
                    .equals(other.identityId, identityId)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                const DeepCollectionEquality().equals(
                    other.estimatedDeliveryTime, estimatedDeliveryTime)) &&
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
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(identityId) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(storeName) ^
      const DeepCollectionEquality().hash(merchantPhoneNumber) ^
      const DeepCollectionEquality().hash(dropLocation) ^
      const DeepCollectionEquality().hash(pickLocation) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(estimatedDeliveryTime) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$OrderDTOCopyWith<_OrderDTO> get copyWith =>
      __$OrderDTOCopyWithImpl<_OrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDTOToJson(this);
  }
}

abstract class _OrderDTO extends SaleOrderDTO {
  const factory _OrderDTO(
      {required String id,
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
      required String status}) = _$_OrderDTO;
  const _OrderDTO._() : super._();

  factory _OrderDTO.fromJson(Map<String, dynamic> json) = _$_OrderDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get driverId => throw _privateConstructorUsedError;
  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  String get identityId => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;
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
  String get deliveryType => throw _privateConstructorUsedError;
  @override
  String get estimatedDeliveryTime => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  double get subTotal => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDTOCopyWith<_OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
