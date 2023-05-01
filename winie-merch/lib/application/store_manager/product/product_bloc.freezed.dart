// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _WatchProductsStarted watchProductsStarted(String storeId) {
    return _WatchProductsStarted(
      storeId,
    );
  }

  _ProductsReceived productsReceived(
      Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess) {
    return _ProductsReceived(
      productsFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchProductsStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess)
        productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchProductsStarted,
    TResult Function(
            Either<StoreManagerFailure, List<Product>>
                productsFailureOrSuccess)?
        productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductsStarted value) watchProductsStarted,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductsStarted value)? watchProductsStarted,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$WatchProductsStartedCopyWith<$Res> {
  factory _$WatchProductsStartedCopyWith(_WatchProductsStarted value,
          $Res Function(_WatchProductsStarted) then) =
      __$WatchProductsStartedCopyWithImpl<$Res>;
  $Res call({String storeId});
}

/// @nodoc
class __$WatchProductsStartedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$WatchProductsStartedCopyWith<$Res> {
  __$WatchProductsStartedCopyWithImpl(
      _WatchProductsStarted _value, $Res Function(_WatchProductsStarted) _then)
      : super(_value, (v) => _then(v as _WatchProductsStarted));

  @override
  _WatchProductsStarted get _value => super._value as _WatchProductsStarted;

  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_WatchProductsStarted(
      storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchProductsStarted implements _WatchProductsStarted {
  const _$_WatchProductsStarted(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'ProductEvent.watchProductsStarted(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchProductsStarted &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality().equals(other.storeId, storeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeId);

  @JsonKey(ignore: true)
  @override
  _$WatchProductsStartedCopyWith<_WatchProductsStarted> get copyWith =>
      __$WatchProductsStartedCopyWithImpl<_WatchProductsStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchProductsStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess)
        productsReceived,
  }) {
    return watchProductsStarted(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchProductsStarted,
    TResult Function(
            Either<StoreManagerFailure, List<Product>>
                productsFailureOrSuccess)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (watchProductsStarted != null) {
      return watchProductsStarted(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductsStarted value) watchProductsStarted,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return watchProductsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductsStarted value)? watchProductsStarted,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (watchProductsStarted != null) {
      return watchProductsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchProductsStarted implements ProductEvent {
  const factory _WatchProductsStarted(String storeId) = _$_WatchProductsStarted;

  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchProductsStartedCopyWith<_WatchProductsStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductsReceivedCopyWith<$Res> {
  factory _$ProductsReceivedCopyWith(
          _ProductsReceived value, $Res Function(_ProductsReceived) then) =
      __$ProductsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess});
}

/// @nodoc
class __$ProductsReceivedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$ProductsReceivedCopyWith<$Res> {
  __$ProductsReceivedCopyWithImpl(
      _ProductsReceived _value, $Res Function(_ProductsReceived) _then)
      : super(_value, (v) => _then(v as _ProductsReceived));

  @override
  _ProductsReceived get _value => super._value as _ProductsReceived;

  @override
  $Res call({
    Object? productsFailureOrSuccess = freezed,
  }) {
    return _then(_ProductsReceived(
      productsFailureOrSuccess == freezed
          ? _value.productsFailureOrSuccess
          : productsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<StoreManagerFailure, List<Product>>,
    ));
  }
}

/// @nodoc

class _$_ProductsReceived implements _ProductsReceived {
  const _$_ProductsReceived(this.productsFailureOrSuccess);

  @override
  final Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess;

  @override
  String toString() {
    return 'ProductEvent.productsReceived(productsFailureOrSuccess: $productsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductsReceived &&
            (identical(
                    other.productsFailureOrSuccess, productsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.productsFailureOrSuccess, productsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productsFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ProductsReceivedCopyWith<_ProductsReceived> get copyWith =>
      __$ProductsReceivedCopyWithImpl<_ProductsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchProductsStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess)
        productsReceived,
  }) {
    return productsReceived(productsFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchProductsStarted,
    TResult Function(
            Either<StoreManagerFailure, List<Product>>
                productsFailureOrSuccess)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(productsFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductsStarted value) watchProductsStarted,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return productsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductsStarted value)? watchProductsStarted,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductsReceived implements ProductEvent {
  const factory _ProductsReceived(
          Either<StoreManagerFailure, List<Product>> productsFailureOrSuccess) =
      _$_ProductsReceived;

  Either<StoreManagerFailure, List<Product>> get productsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProductsReceivedCopyWith<_ProductsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Product> products) {
    return _LoadSuccess(
      products,
    );
  }

  _LoadFailure loadFailure(StoreManagerFailure productFailure) {
    return _LoadFailure(
      productFailure,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(StoreManagerFailure productFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(StoreManagerFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(StoreManagerFailure productFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(StoreManagerFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ProductState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(StoreManagerFailure productFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(StoreManagerFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProductState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_LoadSuccess(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.products);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(StoreManagerFailure productFailure) loadFailure,
  }) {
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(StoreManagerFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProductState {
  const factory _LoadSuccess(List<Product> products) = _$_LoadSuccess;

  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({StoreManagerFailure productFailure});

  $StoreManagerFailureCopyWith<$Res> get productFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? productFailure = freezed,
  }) {
    return _then(_LoadFailure(
      productFailure == freezed
          ? _value.productFailure
          : productFailure // ignore: cast_nullable_to_non_nullable
              as StoreManagerFailure,
    ));
  }

  @override
  $StoreManagerFailureCopyWith<$Res> get productFailure {
    return $StoreManagerFailureCopyWith<$Res>(_value.productFailure, (value) {
      return _then(_value.copyWith(productFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.productFailure);

  @override
  final StoreManagerFailure productFailure;

  @override
  String toString() {
    return 'ProductState.loadFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.productFailure, productFailure) ||
                const DeepCollectionEquality()
                    .equals(other.productFailure, productFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(StoreManagerFailure productFailure) loadFailure,
  }) {
    return loadFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(StoreManagerFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProductState {
  const factory _LoadFailure(StoreManagerFailure productFailure) =
      _$_LoadFailure;

  StoreManagerFailure get productFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
