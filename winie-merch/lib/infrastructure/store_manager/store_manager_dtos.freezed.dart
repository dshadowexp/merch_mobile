// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_manager_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreDTO _$StoreDTOFromJson(Map<String, dynamic> json) {
  return _StoreDTO.fromJson(json);
}

/// @nodoc
class _$StoreDTOTearOff {
  const _$StoreDTOTearOff();

  _StoreDTO call(
      {required String id,
      required String name,
      required String phoneNumber,
      required String address,
      required String dynamicLink,
      required String createdAt,
      required int cancelledOrders,
      required int completedOrders,
      required double currentbalance,
      required double totalBalance,
      required String merchmomoaccount,
      required String network,
      required bool live,
      required bool payoutRequested,
      required String waitTime,
      required String owner,
      required List<String> partners,
      required List<String>? partnerRequests}) {
    return _StoreDTO(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      address: address,
      dynamicLink: dynamicLink,
      createdAt: createdAt,
      cancelledOrders: cancelledOrders,
      completedOrders: completedOrders,
      currentbalance: currentbalance,
      totalBalance: totalBalance,
      merchmomoaccount: merchmomoaccount,
      network: network,
      live: live,
      payoutRequested: payoutRequested,
      waitTime: waitTime,
      owner: owner,
      partners: partners,
      partnerRequests: partnerRequests,
    );
  }

  StoreDTO fromJson(Map<String, Object> json) {
    return StoreDTO.fromJson(json);
  }
}

/// @nodoc
const $StoreDTO = _$StoreDTOTearOff();

/// @nodoc
mixin _$StoreDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get dynamicLink => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get cancelledOrders => throw _privateConstructorUsedError;
  int get completedOrders => throw _privateConstructorUsedError;
  double get currentbalance => throw _privateConstructorUsedError;
  double get totalBalance => throw _privateConstructorUsedError;
  String get merchmomoaccount => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  bool get live => throw _privateConstructorUsedError;
  bool get payoutRequested => throw _privateConstructorUsedError;
  String get waitTime => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  List<String> get partners => throw _privateConstructorUsedError;
  List<String>? get partnerRequests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDTOCopyWith<StoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDTOCopyWith<$Res> {
  factory $StoreDTOCopyWith(StoreDTO value, $Res Function(StoreDTO) then) =
      _$StoreDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String address,
      String dynamicLink,
      String createdAt,
      int cancelledOrders,
      int completedOrders,
      double currentbalance,
      double totalBalance,
      String merchmomoaccount,
      String network,
      bool live,
      bool payoutRequested,
      String waitTime,
      String owner,
      List<String> partners,
      List<String>? partnerRequests});
}

/// @nodoc
class _$StoreDTOCopyWithImpl<$Res> implements $StoreDTOCopyWith<$Res> {
  _$StoreDTOCopyWithImpl(this._value, this._then);

  final StoreDTO _value;
  // ignore: unused_field
  final $Res Function(StoreDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? dynamicLink = freezed,
    Object? createdAt = freezed,
    Object? cancelledOrders = freezed,
    Object? completedOrders = freezed,
    Object? currentbalance = freezed,
    Object? totalBalance = freezed,
    Object? merchmomoaccount = freezed,
    Object? network = freezed,
    Object? live = freezed,
    Object? payoutRequested = freezed,
    Object? waitTime = freezed,
    Object? owner = freezed,
    Object? partners = freezed,
    Object? partnerRequests = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      cancelledOrders: cancelledOrders == freezed
          ? _value.cancelledOrders
          : cancelledOrders // ignore: cast_nullable_to_non_nullable
              as int,
      completedOrders: completedOrders == freezed
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int,
      currentbalance: currentbalance == freezed
          ? _value.currentbalance
          : currentbalance // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: totalBalance == freezed
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      merchmomoaccount: merchmomoaccount == freezed
          ? _value.merchmomoaccount
          : merchmomoaccount // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutRequested: payoutRequested == freezed
          ? _value.payoutRequested
          : payoutRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      partners: partners == freezed
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partnerRequests: partnerRequests == freezed
          ? _value.partnerRequests
          : partnerRequests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$StoreDTOCopyWith<$Res> implements $StoreDTOCopyWith<$Res> {
  factory _$StoreDTOCopyWith(_StoreDTO value, $Res Function(_StoreDTO) then) =
      __$StoreDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String address,
      String dynamicLink,
      String createdAt,
      int cancelledOrders,
      int completedOrders,
      double currentbalance,
      double totalBalance,
      String merchmomoaccount,
      String network,
      bool live,
      bool payoutRequested,
      String waitTime,
      String owner,
      List<String> partners,
      List<String>? partnerRequests});
}

/// @nodoc
class __$StoreDTOCopyWithImpl<$Res> extends _$StoreDTOCopyWithImpl<$Res>
    implements _$StoreDTOCopyWith<$Res> {
  __$StoreDTOCopyWithImpl(_StoreDTO _value, $Res Function(_StoreDTO) _then)
      : super(_value, (v) => _then(v as _StoreDTO));

  @override
  _StoreDTO get _value => super._value as _StoreDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? dynamicLink = freezed,
    Object? createdAt = freezed,
    Object? cancelledOrders = freezed,
    Object? completedOrders = freezed,
    Object? currentbalance = freezed,
    Object? totalBalance = freezed,
    Object? merchmomoaccount = freezed,
    Object? network = freezed,
    Object? live = freezed,
    Object? payoutRequested = freezed,
    Object? waitTime = freezed,
    Object? owner = freezed,
    Object? partners = freezed,
    Object? partnerRequests = freezed,
  }) {
    return _then(_StoreDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      cancelledOrders: cancelledOrders == freezed
          ? _value.cancelledOrders
          : cancelledOrders // ignore: cast_nullable_to_non_nullable
              as int,
      completedOrders: completedOrders == freezed
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int,
      currentbalance: currentbalance == freezed
          ? _value.currentbalance
          : currentbalance // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: totalBalance == freezed
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      merchmomoaccount: merchmomoaccount == freezed
          ? _value.merchmomoaccount
          : merchmomoaccount // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutRequested: payoutRequested == freezed
          ? _value.payoutRequested
          : payoutRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      partners: partners == freezed
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partnerRequests: partnerRequests == freezed
          ? _value.partnerRequests
          : partnerRequests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreDTO extends _StoreDTO {
  const _$_StoreDTO(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.address,
      required this.dynamicLink,
      required this.createdAt,
      required this.cancelledOrders,
      required this.completedOrders,
      required this.currentbalance,
      required this.totalBalance,
      required this.merchmomoaccount,
      required this.network,
      required this.live,
      required this.payoutRequested,
      required this.waitTime,
      required this.owner,
      required this.partners,
      required this.partnerRequests})
      : super._();

  factory _$_StoreDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StoreDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String dynamicLink;
  @override
  final String createdAt;
  @override
  final int cancelledOrders;
  @override
  final int completedOrders;
  @override
  final double currentbalance;
  @override
  final double totalBalance;
  @override
  final String merchmomoaccount;
  @override
  final String network;
  @override
  final bool live;
  @override
  final bool payoutRequested;
  @override
  final String waitTime;
  @override
  final String owner;
  @override
  final List<String> partners;
  @override
  final List<String>? partnerRequests;

  @override
  String toString() {
    return 'StoreDTO(id: $id, name: $name, phoneNumber: $phoneNumber, address: $address, dynamicLink: $dynamicLink, createdAt: $createdAt, cancelledOrders: $cancelledOrders, completedOrders: $completedOrders, currentbalance: $currentbalance, totalBalance: $totalBalance, merchmomoaccount: $merchmomoaccount, network: $network, live: $live, payoutRequested: $payoutRequested, waitTime: $waitTime, owner: $owner, partners: $partners, partnerRequests: $partnerRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.dynamicLink, dynamicLink) ||
                const DeepCollectionEquality()
                    .equals(other.dynamicLink, dynamicLink)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.cancelledOrders, cancelledOrders) ||
                const DeepCollectionEquality()
                    .equals(other.cancelledOrders, cancelledOrders)) &&
            (identical(other.completedOrders, completedOrders) ||
                const DeepCollectionEquality()
                    .equals(other.completedOrders, completedOrders)) &&
            (identical(other.currentbalance, currentbalance) ||
                const DeepCollectionEquality()
                    .equals(other.currentbalance, currentbalance)) &&
            (identical(other.totalBalance, totalBalance) ||
                const DeepCollectionEquality()
                    .equals(other.totalBalance, totalBalance)) &&
            (identical(other.merchmomoaccount, merchmomoaccount) ||
                const DeepCollectionEquality()
                    .equals(other.merchmomoaccount, merchmomoaccount)) &&
            (identical(other.network, network) ||
                const DeepCollectionEquality()
                    .equals(other.network, network)) &&
            (identical(other.live, live) ||
                const DeepCollectionEquality().equals(other.live, live)) &&
            (identical(other.payoutRequested, payoutRequested) ||
                const DeepCollectionEquality()
                    .equals(other.payoutRequested, payoutRequested)) &&
            (identical(other.waitTime, waitTime) ||
                const DeepCollectionEquality()
                    .equals(other.waitTime, waitTime)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.partners, partners) ||
                const DeepCollectionEquality()
                    .equals(other.partners, partners)) &&
            (identical(other.partnerRequests, partnerRequests) ||
                const DeepCollectionEquality()
                    .equals(other.partnerRequests, partnerRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(dynamicLink) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(cancelledOrders) ^
      const DeepCollectionEquality().hash(completedOrders) ^
      const DeepCollectionEquality().hash(currentbalance) ^
      const DeepCollectionEquality().hash(totalBalance) ^
      const DeepCollectionEquality().hash(merchmomoaccount) ^
      const DeepCollectionEquality().hash(network) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(payoutRequested) ^
      const DeepCollectionEquality().hash(waitTime) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(partners) ^
      const DeepCollectionEquality().hash(partnerRequests);

  @JsonKey(ignore: true)
  @override
  _$StoreDTOCopyWith<_StoreDTO> get copyWith =>
      __$StoreDTOCopyWithImpl<_StoreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoreDTOToJson(this);
  }
}

abstract class _StoreDTO extends StoreDTO {
  const factory _StoreDTO(
      {required String id,
      required String name,
      required String phoneNumber,
      required String address,
      required String dynamicLink,
      required String createdAt,
      required int cancelledOrders,
      required int completedOrders,
      required double currentbalance,
      required double totalBalance,
      required String merchmomoaccount,
      required String network,
      required bool live,
      required bool payoutRequested,
      required String waitTime,
      required String owner,
      required List<String> partners,
      required List<String>? partnerRequests}) = _$_StoreDTO;
  const _StoreDTO._() : super._();

  factory _StoreDTO.fromJson(Map<String, dynamic> json) = _$_StoreDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get dynamicLink => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  int get cancelledOrders => throw _privateConstructorUsedError;
  @override
  int get completedOrders => throw _privateConstructorUsedError;
  @override
  double get currentbalance => throw _privateConstructorUsedError;
  @override
  double get totalBalance => throw _privateConstructorUsedError;
  @override
  String get merchmomoaccount => throw _privateConstructorUsedError;
  @override
  String get network => throw _privateConstructorUsedError;
  @override
  bool get live => throw _privateConstructorUsedError;
  @override
  bool get payoutRequested => throw _privateConstructorUsedError;
  @override
  String get waitTime => throw _privateConstructorUsedError;
  @override
  String get owner => throw _privateConstructorUsedError;
  @override
  List<String> get partners => throw _privateConstructorUsedError;
  @override
  List<String>? get partnerRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreDTOCopyWith<_StoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
class _$ProductDTOTearOff {
  const _$ProductDTOTearOff();

  _ProductDTO call(
      {required String id,
      required String name,
      required String? brand,
      required String description,
      required String category,
      required String subCategory,
      required String storeId,
      required List<Map<String, dynamic>> variations,
      required List<String> audiences,
      required String dynamicLink,
      required bool verified}) {
    return _ProductDTO(
      id: id,
      name: name,
      brand: brand,
      description: description,
      category: category,
      subCategory: subCategory,
      storeId: storeId,
      variations: variations,
      audiences: audiences,
      dynamicLink: dynamicLink,
      verified: verified,
    );
  }

  ProductDTO fromJson(Map<String, Object> json) {
    return ProductDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductDTO = _$ProductDTOTearOff();

/// @nodoc
mixin _$ProductDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subCategory => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get variations =>
      throw _privateConstructorUsedError;
  List<String> get audiences => throw _privateConstructorUsedError;
  String get dynamicLink => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? brand,
      String description,
      String category,
      String subCategory,
      String storeId,
      List<Map<String, dynamic>> variations,
      List<String> audiences,
      String dynamicLink,
      bool verified});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res> implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  final ProductDTO _value;
  // ignore: unused_field
  final $Res Function(ProductDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? storeId = freezed,
    Object? variations = freezed,
    Object? audiences = freezed,
    Object? dynamicLink = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      audiences: audiences == freezed
          ? _value.audiences
          : audiences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductDTOCopyWith<$Res> implements $ProductDTOCopyWith<$Res> {
  factory _$ProductDTOCopyWith(
          _ProductDTO value, $Res Function(_ProductDTO) then) =
      __$ProductDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? brand,
      String description,
      String category,
      String subCategory,
      String storeId,
      List<Map<String, dynamic>> variations,
      List<String> audiences,
      String dynamicLink,
      bool verified});
}

/// @nodoc
class __$ProductDTOCopyWithImpl<$Res> extends _$ProductDTOCopyWithImpl<$Res>
    implements _$ProductDTOCopyWith<$Res> {
  __$ProductDTOCopyWithImpl(
      _ProductDTO _value, $Res Function(_ProductDTO) _then)
      : super(_value, (v) => _then(v as _ProductDTO));

  @override
  _ProductDTO get _value => super._value as _ProductDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? storeId = freezed,
    Object? variations = freezed,
    Object? audiences = freezed,
    Object? dynamicLink = freezed,
    Object? verified = freezed,
  }) {
    return _then(_ProductDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      audiences: audiences == freezed
          ? _value.audiences
          : audiences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDTO extends _ProductDTO {
  const _$_ProductDTO(
      {required this.id,
      required this.name,
      required this.brand,
      required this.description,
      required this.category,
      required this.subCategory,
      required this.storeId,
      required this.variations,
      required this.audiences,
      required this.dynamicLink,
      required this.verified})
      : super._();

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? brand;
  @override
  final String description;
  @override
  final String category;
  @override
  final String subCategory;
  @override
  final String storeId;
  @override
  final List<Map<String, dynamic>> variations;
  @override
  final List<String> audiences;
  @override
  final String dynamicLink;
  @override
  final bool verified;

  @override
  String toString() {
    return 'ProductDTO(id: $id, name: $name, brand: $brand, description: $description, category: $category, subCategory: $subCategory, storeId: $storeId, variations: $variations, audiences: $audiences, dynamicLink: $dynamicLink, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subCategory, subCategory) ||
                const DeepCollectionEquality()
                    .equals(other.subCategory, subCategory)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.variations, variations) ||
                const DeepCollectionEquality()
                    .equals(other.variations, variations)) &&
            (identical(other.audiences, audiences) ||
                const DeepCollectionEquality()
                    .equals(other.audiences, audiences)) &&
            (identical(other.dynamicLink, dynamicLink) ||
                const DeepCollectionEquality()
                    .equals(other.dynamicLink, dynamicLink)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subCategory) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(variations) ^
      const DeepCollectionEquality().hash(audiences) ^
      const DeepCollectionEquality().hash(dynamicLink) ^
      const DeepCollectionEquality().hash(verified);

  @JsonKey(ignore: true)
  @override
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      __$ProductDTOCopyWithImpl<_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDTOToJson(this);
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {required String id,
      required String name,
      required String? brand,
      required String description,
      required String category,
      required String subCategory,
      required String storeId,
      required List<Map<String, dynamic>> variations,
      required List<String> audiences,
      required String dynamicLink,
      required bool verified}) = _$_ProductDTO;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get brand => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get subCategory => throw _privateConstructorUsedError;
  @override
  String get storeId => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get variations =>
      throw _privateConstructorUsedError;
  @override
  List<String> get audiences => throw _privateConstructorUsedError;
  @override
  String get dynamicLink => throw _privateConstructorUsedError;
  @override
  bool get verified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

VariationDTO _$VariationDTOFromJson(Map<String, dynamic> json) {
  return _ProductVarietyDTO.fromJson(json);
}

/// @nodoc
class _$VariationDTOTearOff {
  const _$VariationDTOTearOff();

  _ProductVarietyDTO call(
      {required String id,
      required String price,
      required dynamic quantity,
      required List<String> photos,
      required List<String> sizes,
      required String color,
      required String condition,
      int? views,
      int? buys,
      int? inCart,
      int? ratingCount,
      double? ratingTotal}) {
    return _ProductVarietyDTO(
      id: id,
      price: price,
      quantity: quantity,
      photos: photos,
      sizes: sizes,
      color: color,
      condition: condition,
      views: views,
      buys: buys,
      inCart: inCart,
      ratingCount: ratingCount,
      ratingTotal: ratingTotal,
    );
  }

  VariationDTO fromJson(Map<String, Object> json) {
    return VariationDTO.fromJson(json);
  }
}

/// @nodoc
const $VariationDTO = _$VariationDTOTearOff();

/// @nodoc
mixin _$VariationDTO {
  String get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  dynamic get quantity => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  List<String> get sizes => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get buys => throw _privateConstructorUsedError;
  int? get inCart => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get ratingTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationDTOCopyWith<VariationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationDTOCopyWith<$Res> {
  factory $VariationDTOCopyWith(
          VariationDTO value, $Res Function(VariationDTO) then) =
      _$VariationDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String price,
      dynamic quantity,
      List<String> photos,
      List<String> sizes,
      String color,
      String condition,
      int? views,
      int? buys,
      int? inCart,
      int? ratingCount,
      double? ratingTotal});
}

/// @nodoc
class _$VariationDTOCopyWithImpl<$Res> implements $VariationDTOCopyWith<$Res> {
  _$VariationDTOCopyWithImpl(this._value, this._then);

  final VariationDTO _value;
  // ignore: unused_field
  final $Res Function(VariationDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
    Object? sizes = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? views = freezed,
    Object? buys = freezed,
    Object? inCart = freezed,
    Object? ratingCount = freezed,
    Object? ratingTotal = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      buys: buys == freezed
          ? _value.buys
          : buys // ignore: cast_nullable_to_non_nullable
              as int?,
      inCart: inCart == freezed
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingTotal: ratingTotal == freezed
          ? _value.ratingTotal
          : ratingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ProductVarietyDTOCopyWith<$Res>
    implements $VariationDTOCopyWith<$Res> {
  factory _$ProductVarietyDTOCopyWith(
          _ProductVarietyDTO value, $Res Function(_ProductVarietyDTO) then) =
      __$ProductVarietyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String price,
      dynamic quantity,
      List<String> photos,
      List<String> sizes,
      String color,
      String condition,
      int? views,
      int? buys,
      int? inCart,
      int? ratingCount,
      double? ratingTotal});
}

/// @nodoc
class __$ProductVarietyDTOCopyWithImpl<$Res>
    extends _$VariationDTOCopyWithImpl<$Res>
    implements _$ProductVarietyDTOCopyWith<$Res> {
  __$ProductVarietyDTOCopyWithImpl(
      _ProductVarietyDTO _value, $Res Function(_ProductVarietyDTO) _then)
      : super(_value, (v) => _then(v as _ProductVarietyDTO));

  @override
  _ProductVarietyDTO get _value => super._value as _ProductVarietyDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
    Object? sizes = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? views = freezed,
    Object? buys = freezed,
    Object? inCart = freezed,
    Object? ratingCount = freezed,
    Object? ratingTotal = freezed,
  }) {
    return _then(_ProductVarietyDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      buys: buys == freezed
          ? _value.buys
          : buys // ignore: cast_nullable_to_non_nullable
              as int?,
      inCart: inCart == freezed
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingTotal: ratingTotal == freezed
          ? _value.ratingTotal
          : ratingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVarietyDTO extends _ProductVarietyDTO {
  const _$_ProductVarietyDTO(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.photos,
      required this.sizes,
      required this.color,
      required this.condition,
      this.views,
      this.buys,
      this.inCart,
      this.ratingCount,
      this.ratingTotal})
      : super._();

  factory _$_ProductVarietyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductVarietyDTOFromJson(json);

  @override
  final String id;
  @override
  final String price;
  @override
  final dynamic quantity;
  @override
  final List<String> photos;
  @override
  final List<String> sizes;
  @override
  final String color;
  @override
  final String condition;
  @override
  final int? views;
  @override
  final int? buys;
  @override
  final int? inCart;
  @override
  final int? ratingCount;
  @override
  final double? ratingTotal;

  @override
  String toString() {
    return 'VariationDTO(id: $id, price: $price, quantity: $quantity, photos: $photos, sizes: $sizes, color: $color, condition: $condition, views: $views, buys: $buys, inCart: $inCart, ratingCount: $ratingCount, ratingTotal: $ratingTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductVarietyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.sizes, sizes) ||
                const DeepCollectionEquality().equals(other.sizes, sizes)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.buys, buys) ||
                const DeepCollectionEquality().equals(other.buys, buys)) &&
            (identical(other.inCart, inCart) ||
                const DeepCollectionEquality().equals(other.inCart, inCart)) &&
            (identical(other.ratingCount, ratingCount) ||
                const DeepCollectionEquality()
                    .equals(other.ratingCount, ratingCount)) &&
            (identical(other.ratingTotal, ratingTotal) ||
                const DeepCollectionEquality()
                    .equals(other.ratingTotal, ratingTotal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(sizes) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(buys) ^
      const DeepCollectionEquality().hash(inCart) ^
      const DeepCollectionEquality().hash(ratingCount) ^
      const DeepCollectionEquality().hash(ratingTotal);

  @JsonKey(ignore: true)
  @override
  _$ProductVarietyDTOCopyWith<_ProductVarietyDTO> get copyWith =>
      __$ProductVarietyDTOCopyWithImpl<_ProductVarietyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductVarietyDTOToJson(this);
  }
}

abstract class _ProductVarietyDTO extends VariationDTO {
  const factory _ProductVarietyDTO(
      {required String id,
      required String price,
      required dynamic quantity,
      required List<String> photos,
      required List<String> sizes,
      required String color,
      required String condition,
      int? views,
      int? buys,
      int? inCart,
      int? ratingCount,
      double? ratingTotal}) = _$_ProductVarietyDTO;
  const _ProductVarietyDTO._() : super._();

  factory _ProductVarietyDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductVarietyDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  dynamic get quantity => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  List<String> get sizes => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get condition => throw _privateConstructorUsedError;
  @override
  int? get views => throw _privateConstructorUsedError;
  @override
  int? get buys => throw _privateConstructorUsedError;
  @override
  int? get inCart => throw _privateConstructorUsedError;
  @override
  int? get ratingCount => throw _privateConstructorUsedError;
  @override
  double? get ratingTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductVarietyDTOCopyWith<_ProductVarietyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
