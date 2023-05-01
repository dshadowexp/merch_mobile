// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemDTO _$CartItemDTOFromJson(Map<String, dynamic> json) {
  return _CartItemDTO.fromJson(json);
}

/// @nodoc
class _$CartItemDTOTearOff {
  const _$CartItemDTOTearOff();

  _CartItemDTO call(
      {required String id,
      required Map<String, dynamic> product,
      required Map<String, dynamic> variation,
      required dynamic quantity,
      required String size}) {
    return _CartItemDTO(
      id: id,
      product: product,
      variation: variation,
      quantity: quantity,
      size: size,
    );
  }

  CartItemDTO fromJson(Map<String, Object> json) {
    return CartItemDTO.fromJson(json);
  }
}

/// @nodoc
const $CartItemDTO = _$CartItemDTOTearOff();

/// @nodoc
mixin _$CartItemDTO {
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get product => throw _privateConstructorUsedError;
  Map<String, dynamic> get variation => throw _privateConstructorUsedError;
  dynamic get quantity => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemDTOCopyWith<CartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemDTOCopyWith<$Res> {
  factory $CartItemDTOCopyWith(
          CartItemDTO value, $Res Function(CartItemDTO) then) =
      _$CartItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Map<String, dynamic> product,
      Map<String, dynamic> variation,
      dynamic quantity,
      String size});
}

/// @nodoc
class _$CartItemDTOCopyWithImpl<$Res> implements $CartItemDTOCopyWith<$Res> {
  _$CartItemDTOCopyWithImpl(this._value, this._then);

  final CartItemDTO _value;
  // ignore: unused_field
  final $Res Function(CartItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CartItemDTOCopyWith<$Res>
    implements $CartItemDTOCopyWith<$Res> {
  factory _$CartItemDTOCopyWith(
          _CartItemDTO value, $Res Function(_CartItemDTO) then) =
      __$CartItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Map<String, dynamic> product,
      Map<String, dynamic> variation,
      dynamic quantity,
      String size});
}

/// @nodoc
class __$CartItemDTOCopyWithImpl<$Res> extends _$CartItemDTOCopyWithImpl<$Res>
    implements _$CartItemDTOCopyWith<$Res> {
  __$CartItemDTOCopyWithImpl(
      _CartItemDTO _value, $Res Function(_CartItemDTO) _then)
      : super(_value, (v) => _then(v as _CartItemDTO));

  @override
  _CartItemDTO get _value => super._value as _CartItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? size = freezed,
  }) {
    return _then(_CartItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemDTO extends _CartItemDTO {
  const _$_CartItemDTO(
      {required this.id,
      required this.product,
      required this.variation,
      required this.quantity,
      required this.size})
      : super._();

  factory _$_CartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemDTOFromJson(json);

  @override
  final String id;
  @override
  final Map<String, dynamic> product;
  @override
  final Map<String, dynamic> variation;
  @override
  final dynamic quantity;
  @override
  final String size;

  @override
  String toString() {
    return 'CartItemDTO(id: $id, product: $product, variation: $variation, quantity: $quantity, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItemDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.variation, variation) ||
                const DeepCollectionEquality()
                    .equals(other.variation, variation)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(variation) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$CartItemDTOCopyWith<_CartItemDTO> get copyWith =>
      __$CartItemDTOCopyWithImpl<_CartItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemDTOToJson(this);
  }
}

abstract class _CartItemDTO extends CartItemDTO {
  const factory _CartItemDTO(
      {required String id,
      required Map<String, dynamic> product,
      required Map<String, dynamic> variation,
      required dynamic quantity,
      required String size}) = _$_CartItemDTO;
  const _CartItemDTO._() : super._();

  factory _CartItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CartItemDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get product => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get variation => throw _privateConstructorUsedError;
  @override
  dynamic get quantity => throw _privateConstructorUsedError;
  @override
  String get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemDTOCopyWith<_CartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProductDTO _$CartProductDTOFromJson(Map<String, dynamic> json) {
  return _CartProductDTO.fromJson(json);
}

/// @nodoc
class _$CartProductDTOTearOff {
  const _$CartProductDTOTearOff();

  _CartProductDTO call(
      {required String id,
      required String name,
      required String storeId,
      required String dynamicLink}) {
    return _CartProductDTO(
      id: id,
      name: name,
      storeId: storeId,
      dynamicLink: dynamicLink,
    );
  }

  CartProductDTO fromJson(Map<String, Object> json) {
    return CartProductDTO.fromJson(json);
  }
}

/// @nodoc
const $CartProductDTO = _$CartProductDTOTearOff();

/// @nodoc
mixin _$CartProductDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  String get dynamicLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductDTOCopyWith<CartProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDTOCopyWith<$Res> {
  factory $CartProductDTOCopyWith(
          CartProductDTO value, $Res Function(CartProductDTO) then) =
      _$CartProductDTOCopyWithImpl<$Res>;
  $Res call({String id, String name, String storeId, String dynamicLink});
}

/// @nodoc
class _$CartProductDTOCopyWithImpl<$Res>
    implements $CartProductDTOCopyWith<$Res> {
  _$CartProductDTOCopyWithImpl(this._value, this._then);

  final CartProductDTO _value;
  // ignore: unused_field
  final $Res Function(CartProductDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? storeId = freezed,
    Object? dynamicLink = freezed,
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
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CartProductDTOCopyWith<$Res>
    implements $CartProductDTOCopyWith<$Res> {
  factory _$CartProductDTOCopyWith(
          _CartProductDTO value, $Res Function(_CartProductDTO) then) =
      __$CartProductDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String storeId, String dynamicLink});
}

/// @nodoc
class __$CartProductDTOCopyWithImpl<$Res>
    extends _$CartProductDTOCopyWithImpl<$Res>
    implements _$CartProductDTOCopyWith<$Res> {
  __$CartProductDTOCopyWithImpl(
      _CartProductDTO _value, $Res Function(_CartProductDTO) _then)
      : super(_value, (v) => _then(v as _CartProductDTO));

  @override
  _CartProductDTO get _value => super._value as _CartProductDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? storeId = freezed,
    Object? dynamicLink = freezed,
  }) {
    return _then(_CartProductDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductDTO extends _CartProductDTO {
  const _$_CartProductDTO(
      {required this.id,
      required this.name,
      required this.storeId,
      required this.dynamicLink})
      : super._();

  factory _$_CartProductDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CartProductDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String storeId;
  @override
  final String dynamicLink;

  @override
  String toString() {
    return 'CartProductDTO(id: $id, name: $name, storeId: $storeId, dynamicLink: $dynamicLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartProductDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.dynamicLink, dynamicLink) ||
                const DeepCollectionEquality()
                    .equals(other.dynamicLink, dynamicLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(dynamicLink);

  @JsonKey(ignore: true)
  @override
  _$CartProductDTOCopyWith<_CartProductDTO> get copyWith =>
      __$CartProductDTOCopyWithImpl<_CartProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartProductDTOToJson(this);
  }
}

abstract class _CartProductDTO extends CartProductDTO {
  const factory _CartProductDTO(
      {required String id,
      required String name,
      required String storeId,
      required String dynamicLink}) = _$_CartProductDTO;
  const _CartProductDTO._() : super._();

  factory _CartProductDTO.fromJson(Map<String, dynamic> json) =
      _$_CartProductDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get storeId => throw _privateConstructorUsedError;
  @override
  String get dynamicLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartProductDTOCopyWith<_CartProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CartVariationDTO _$CartVariationDTOFromJson(Map<String, dynamic> json) {
  return _VariationDTO.fromJson(json);
}

/// @nodoc
class _$CartVariationDTOTearOff {
  const _$CartVariationDTOTearOff();

  _VariationDTO call(
      {required String id,
      required String price,
      required dynamic quantity,
      required List<String> photos,
      required String color}) {
    return _VariationDTO(
      id: id,
      price: price,
      quantity: quantity,
      photos: photos,
      color: color,
    );
  }

  CartVariationDTO fromJson(Map<String, Object> json) {
    return CartVariationDTO.fromJson(json);
  }
}

/// @nodoc
const $CartVariationDTO = _$CartVariationDTOTearOff();

/// @nodoc
mixin _$CartVariationDTO {
  String get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  dynamic get quantity => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartVariationDTOCopyWith<CartVariationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartVariationDTOCopyWith<$Res> {
  factory $CartVariationDTOCopyWith(
          CartVariationDTO value, $Res Function(CartVariationDTO) then) =
      _$CartVariationDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String price,
      dynamic quantity,
      List<String> photos,
      String color});
}

/// @nodoc
class _$CartVariationDTOCopyWithImpl<$Res>
    implements $CartVariationDTOCopyWith<$Res> {
  _$CartVariationDTOCopyWithImpl(this._value, this._then);

  final CartVariationDTO _value;
  // ignore: unused_field
  final $Res Function(CartVariationDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
    Object? color = freezed,
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VariationDTOCopyWith<$Res>
    implements $CartVariationDTOCopyWith<$Res> {
  factory _$VariationDTOCopyWith(
          _VariationDTO value, $Res Function(_VariationDTO) then) =
      __$VariationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String price,
      dynamic quantity,
      List<String> photos,
      String color});
}

/// @nodoc
class __$VariationDTOCopyWithImpl<$Res>
    extends _$CartVariationDTOCopyWithImpl<$Res>
    implements _$VariationDTOCopyWith<$Res> {
  __$VariationDTOCopyWithImpl(
      _VariationDTO _value, $Res Function(_VariationDTO) _then)
      : super(_value, (v) => _then(v as _VariationDTO));

  @override
  _VariationDTO get _value => super._value as _VariationDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
    Object? color = freezed,
  }) {
    return _then(_VariationDTO(
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariationDTO extends _VariationDTO {
  const _$_VariationDTO(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.photos,
      required this.color})
      : super._();

  factory _$_VariationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_VariationDTOFromJson(json);

  @override
  final String id;
  @override
  final String price;
  @override
  final dynamic quantity;
  @override
  final List<String> photos;
  @override
  final String color;

  @override
  String toString() {
    return 'CartVariationDTO(id: $id, price: $price, quantity: $quantity, photos: $photos, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariationDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$VariationDTOCopyWith<_VariationDTO> get copyWith =>
      __$VariationDTOCopyWithImpl<_VariationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VariationDTOToJson(this);
  }
}

abstract class _VariationDTO extends CartVariationDTO {
  const factory _VariationDTO(
      {required String id,
      required String price,
      required dynamic quantity,
      required List<String> photos,
      required String color}) = _$_VariationDTO;
  const _VariationDTO._() : super._();

  factory _VariationDTO.fromJson(Map<String, dynamic> json) =
      _$_VariationDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  dynamic get quantity => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariationDTOCopyWith<_VariationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
