// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call(
      {required UniqueId id,
      required CartProduct product,
      required CartVariation variation,
      required int quantity,
      required String size}) {
    return _CartItem(
      id: id,
      product: product,
      variation: variation,
      quantity: quantity,
      size: size,
    );
  }
}

/// @nodoc
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  UniqueId get id => throw _privateConstructorUsedError;
  CartProduct get product => throw _privateConstructorUsedError;
  CartVariation get variation => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      CartProduct product,
      CartVariation variation,
      int quantity,
      String size});

  $CartProductCopyWith<$Res> get product;
  $CartVariationCopyWith<$Res> get variation;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

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
              as UniqueId,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as CartVariation,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CartProductCopyWith<$Res> get product {
    return $CartProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $CartVariationCopyWith<$Res> get variation {
    return $CartVariationCopyWith<$Res>(_value.variation, (value) {
      return _then(_value.copyWith(variation: value));
    });
  }
}

/// @nodoc
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      CartProduct product,
      CartVariation variation,
      int quantity,
      String size});

  @override
  $CartProductCopyWith<$Res> get product;
  @override
  $CartVariationCopyWith<$Res> get variation;
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? size = freezed,
  }) {
    return _then(_CartItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as CartVariation,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartItem extends _CartItem {
  const _$_CartItem(
      {required this.id,
      required this.product,
      required this.variation,
      required this.quantity,
      required this.size})
      : super._();

  @override
  final UniqueId id;
  @override
  final CartProduct product;
  @override
  final CartVariation variation;
  @override
  final int quantity;
  @override
  final String size;

  @override
  String toString() {
    return 'CartItem(id: $id, product: $product, variation: $variation, quantity: $quantity, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItem &&
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
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);
}

abstract class _CartItem extends CartItem {
  const factory _CartItem(
      {required UniqueId id,
      required CartProduct product,
      required CartVariation variation,
      required int quantity,
      required String size}) = _$_CartItem;
  const _CartItem._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  CartProduct get product => throw _privateConstructorUsedError;
  @override
  CartVariation get variation => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  String get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemCopyWith<_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartProductTearOff {
  const _$CartProductTearOff();

  _CartProduct call(
      {required UniqueId id,
      required String name,
      required UniqueId storeId,
      required String dynamicLink}) {
    return _CartProduct(
      id: id,
      name: name,
      storeId: storeId,
      dynamicLink: dynamicLink,
    );
  }
}

/// @nodoc
const $CartProduct = _$CartProductTearOff();

/// @nodoc
mixin _$CartProduct {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UniqueId get storeId => throw _privateConstructorUsedError;
  String get dynamicLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, UniqueId storeId, String dynamicLink});
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res> implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  final CartProduct _value;
  // ignore: unused_field
  final $Res Function(CartProduct) _then;

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
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$CartProductCopyWith(
          _CartProduct value, $Res Function(_CartProduct) then) =
      __$CartProductCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, UniqueId storeId, String dynamicLink});
}

/// @nodoc
class __$CartProductCopyWithImpl<$Res> extends _$CartProductCopyWithImpl<$Res>
    implements _$CartProductCopyWith<$Res> {
  __$CartProductCopyWithImpl(
      _CartProduct _value, $Res Function(_CartProduct) _then)
      : super(_value, (v) => _then(v as _CartProduct));

  @override
  _CartProduct get _value => super._value as _CartProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? storeId = freezed,
    Object? dynamicLink = freezed,
  }) {
    return _then(_CartProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dynamicLink: dynamicLink == freezed
          ? _value.dynamicLink
          : dynamicLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartProduct extends _CartProduct {
  const _$_CartProduct(
      {required this.id,
      required this.name,
      required this.storeId,
      required this.dynamicLink})
      : super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final UniqueId storeId;
  @override
  final String dynamicLink;

  @override
  String toString() {
    return 'CartProduct(id: $id, name: $name, storeId: $storeId, dynamicLink: $dynamicLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartProduct &&
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
  _$CartProductCopyWith<_CartProduct> get copyWith =>
      __$CartProductCopyWithImpl<_CartProduct>(this, _$identity);
}

abstract class _CartProduct extends CartProduct {
  const factory _CartProduct(
      {required UniqueId id,
      required String name,
      required UniqueId storeId,
      required String dynamicLink}) = _$_CartProduct;
  const _CartProduct._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  UniqueId get storeId => throw _privateConstructorUsedError;
  @override
  String get dynamicLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartProductCopyWith<_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartVariationTearOff {
  const _$CartVariationTearOff();

  _CartVariation call(
      {required UniqueId id,
      required String color,
      required String price,
      required int quantity,
      required List<String> photos}) {
    return _CartVariation(
      id: id,
      color: color,
      price: price,
      quantity: quantity,
      photos: photos,
    );
  }
}

/// @nodoc
const $CartVariation = _$CartVariationTearOff();

/// @nodoc
mixin _$CartVariation {
  UniqueId get id => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartVariationCopyWith<CartVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartVariationCopyWith<$Res> {
  factory $CartVariationCopyWith(
          CartVariation value, $Res Function(CartVariation) then) =
      _$CartVariationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String color,
      String price,
      int quantity,
      List<String> photos});
}

/// @nodoc
class _$CartVariationCopyWithImpl<$Res>
    implements $CartVariationCopyWith<$Res> {
  _$CartVariationCopyWithImpl(this._value, this._then);

  final CartVariation _value;
  // ignore: unused_field
  final $Res Function(CartVariation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CartVariationCopyWith<$Res>
    implements $CartVariationCopyWith<$Res> {
  factory _$CartVariationCopyWith(
          _CartVariation value, $Res Function(_CartVariation) then) =
      __$CartVariationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String color,
      String price,
      int quantity,
      List<String> photos});
}

/// @nodoc
class __$CartVariationCopyWithImpl<$Res>
    extends _$CartVariationCopyWithImpl<$Res>
    implements _$CartVariationCopyWith<$Res> {
  __$CartVariationCopyWithImpl(
      _CartVariation _value, $Res Function(_CartVariation) _then)
      : super(_value, (v) => _then(v as _CartVariation));

  @override
  _CartVariation get _value => super._value as _CartVariation;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? photos = freezed,
  }) {
    return _then(_CartVariation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CartVariation extends _CartVariation {
  const _$_CartVariation(
      {required this.id,
      required this.color,
      required this.price,
      required this.quantity,
      required this.photos})
      : super._();

  @override
  final UniqueId id;
  @override
  final String color;
  @override
  final String price;
  @override
  final int quantity;
  @override
  final List<String> photos;

  @override
  String toString() {
    return 'CartVariation(id: $id, color: $color, price: $price, quantity: $quantity, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartVariation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$CartVariationCopyWith<_CartVariation> get copyWith =>
      __$CartVariationCopyWithImpl<_CartVariation>(this, _$identity);
}

abstract class _CartVariation extends CartVariation {
  const factory _CartVariation(
      {required UniqueId id,
      required String color,
      required String price,
      required int quantity,
      required List<String> photos}) = _$_CartVariation;
  const _CartVariation._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartVariationCopyWith<_CartVariation> get copyWith =>
      throw _privateConstructorUsedError;
}
