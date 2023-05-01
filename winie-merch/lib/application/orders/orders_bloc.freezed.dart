// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersEventTearOff {
  const _$OrdersEventTearOff();

  _WatchOrdersStarted watchOrdersStarted(String storeId) {
    return _WatchOrdersStarted(
      storeId,
    );
  }

  _OrdersReceived ordersReceived(
      Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess) {
    return _OrdersReceived(
      ordersFailureOrSuccess,
    );
  }
}

/// @nodoc
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchOrdersStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess)
        ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchOrdersStarted,
    TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>>
                ordersFailureOrSuccess)?
        ordersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(_OrdersReceived value) ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(_OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;
}

/// @nodoc
abstract class _$WatchOrdersStartedCopyWith<$Res> {
  factory _$WatchOrdersStartedCopyWith(
          _WatchOrdersStarted value, $Res Function(_WatchOrdersStarted) then) =
      __$WatchOrdersStartedCopyWithImpl<$Res>;
  $Res call({String storeId});
}

/// @nodoc
class __$WatchOrdersStartedCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements _$WatchOrdersStartedCopyWith<$Res> {
  __$WatchOrdersStartedCopyWithImpl(
      _WatchOrdersStarted _value, $Res Function(_WatchOrdersStarted) _then)
      : super(_value, (v) => _then(v as _WatchOrdersStarted));

  @override
  _WatchOrdersStarted get _value => super._value as _WatchOrdersStarted;

  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_WatchOrdersStarted(
      storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchOrdersStarted implements _WatchOrdersStarted {
  const _$_WatchOrdersStarted(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'OrdersEvent.watchOrdersStarted(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchOrdersStarted &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality().equals(other.storeId, storeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeId);

  @JsonKey(ignore: true)
  @override
  _$WatchOrdersStartedCopyWith<_WatchOrdersStarted> get copyWith =>
      __$WatchOrdersStartedCopyWithImpl<_WatchOrdersStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchOrdersStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess)
        ordersReceived,
  }) {
    return watchOrdersStarted(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchOrdersStarted,
    TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>>
                ordersFailureOrSuccess)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchOrdersStarted != null) {
      return watchOrdersStarted(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(_OrdersReceived value) ordersReceived,
  }) {
    return watchOrdersStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(_OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchOrdersStarted != null) {
      return watchOrdersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchOrdersStarted implements OrdersEvent {
  const factory _WatchOrdersStarted(String storeId) = _$_WatchOrdersStarted;

  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchOrdersStartedCopyWith<_WatchOrdersStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrdersReceivedCopyWith<$Res> {
  factory _$OrdersReceivedCopyWith(
          _OrdersReceived value, $Res Function(_OrdersReceived) then) =
      __$OrdersReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess});
}

/// @nodoc
class __$OrdersReceivedCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements _$OrdersReceivedCopyWith<$Res> {
  __$OrdersReceivedCopyWithImpl(
      _OrdersReceived _value, $Res Function(_OrdersReceived) _then)
      : super(_value, (v) => _then(v as _OrdersReceived));

  @override
  _OrdersReceived get _value => super._value as _OrdersReceived;

  @override
  $Res call({
    Object? ordersFailureOrSuccess = freezed,
  }) {
    return _then(_OrdersReceived(
      ordersFailureOrSuccess == freezed
          ? _value.ordersFailureOrSuccess
          : ordersFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<StoreManagerFailure, List<SaleOrder>>,
    ));
  }
}

/// @nodoc

class _$_OrdersReceived implements _OrdersReceived {
  const _$_OrdersReceived(this.ordersFailureOrSuccess);

  @override
  final Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess;

  @override
  String toString() {
    return 'OrdersEvent.ordersReceived(ordersFailureOrSuccess: $ordersFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersReceived &&
            (identical(other.ordersFailureOrSuccess, ordersFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.ordersFailureOrSuccess, ordersFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ordersFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$OrdersReceivedCopyWith<_OrdersReceived> get copyWith =>
      __$OrdersReceivedCopyWithImpl<_OrdersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String storeId) watchOrdersStarted,
    required TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess)
        ordersReceived,
  }) {
    return ordersReceived(ordersFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String storeId)? watchOrdersStarted,
    TResult Function(
            Either<StoreManagerFailure, List<SaleOrder>>
                ordersFailureOrSuccess)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (ordersReceived != null) {
      return ordersReceived(ordersFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(_OrdersReceived value) ordersReceived,
  }) {
    return ordersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(_OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (ordersReceived != null) {
      return ordersReceived(this);
    }
    return orElse();
  }
}

abstract class _OrdersReceived implements OrdersEvent {
  const factory _OrdersReceived(
          Either<StoreManagerFailure, List<SaleOrder>> ordersFailureOrSuccess) =
      _$_OrdersReceived;

  Either<StoreManagerFailure, List<SaleOrder>> get ordersFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrdersReceivedCopyWith<_OrdersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadFailure loadFailure(StoreManagerFailure orderFailure) {
    return _LoadFailure(
      orderFailure,
    );
  }

  _LoadOrders loadOrders(List<SaleOrder> orders) {
    return _LoadOrders(
      orders,
    );
  }
}

/// @nodoc
const $OrdersState = _$OrdersStateTearOff();

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(List<SaleOrder> orders) loadOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(List<SaleOrder> orders)? loadOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadOrders value) loadOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadOrders value)? loadOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
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
    return 'OrdersState.initial()';
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
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(List<SaleOrder> orders) loadOrders,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(List<SaleOrder> orders)? loadOrders,
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
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadOrders value) loadOrders,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadOrders value)? loadOrders,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
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
    extends _$OrdersStateCopyWithImpl<$Res>
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
    return 'OrdersState.loadInProgress()';
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
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(List<SaleOrder> orders) loadOrders,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(List<SaleOrder> orders)? loadOrders,
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
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadOrders value) loadOrders,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadOrders value)? loadOrders,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements OrdersState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({StoreManagerFailure orderFailure});

  $StoreManagerFailureCopyWith<$Res> get orderFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? orderFailure = freezed,
  }) {
    return _then(_LoadFailure(
      orderFailure == freezed
          ? _value.orderFailure
          : orderFailure // ignore: cast_nullable_to_non_nullable
              as StoreManagerFailure,
    ));
  }

  @override
  $StoreManagerFailureCopyWith<$Res> get orderFailure {
    return $StoreManagerFailureCopyWith<$Res>(_value.orderFailure, (value) {
      return _then(_value.copyWith(orderFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.orderFailure);

  @override
  final StoreManagerFailure orderFailure;

  @override
  String toString() {
    return 'OrdersState.loadFailure(orderFailure: $orderFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.orderFailure, orderFailure) ||
                const DeepCollectionEquality()
                    .equals(other.orderFailure, orderFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(List<SaleOrder> orders) loadOrders,
  }) {
    return loadFailure(orderFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(List<SaleOrder> orders)? loadOrders,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(orderFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadOrders value) loadOrders,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadOrders value)? loadOrders,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OrdersState {
  const factory _LoadFailure(StoreManagerFailure orderFailure) = _$_LoadFailure;

  StoreManagerFailure get orderFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadOrdersCopyWith<$Res> {
  factory _$LoadOrdersCopyWith(
          _LoadOrders value, $Res Function(_LoadOrders) then) =
      __$LoadOrdersCopyWithImpl<$Res>;
  $Res call({List<SaleOrder> orders});
}

/// @nodoc
class __$LoadOrdersCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$LoadOrdersCopyWith<$Res> {
  __$LoadOrdersCopyWithImpl(
      _LoadOrders _value, $Res Function(_LoadOrders) _then)
      : super(_value, (v) => _then(v as _LoadOrders));

  @override
  _LoadOrders get _value => super._value as _LoadOrders;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_LoadOrders(
      orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SaleOrder>,
    ));
  }
}

/// @nodoc

class _$_LoadOrders implements _LoadOrders {
  const _$_LoadOrders(this.orders);

  @override
  final List<SaleOrder> orders;

  @override
  String toString() {
    return 'OrdersState.loadOrders(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrders &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orders);

  @JsonKey(ignore: true)
  @override
  _$LoadOrdersCopyWith<_LoadOrders> get copyWith =>
      __$LoadOrdersCopyWithImpl<_LoadOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(List<SaleOrder> orders) loadOrders,
  }) {
    return loadOrders(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(List<SaleOrder> orders)? loadOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadOrders value) loadOrders,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadOrders value)? loadOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements OrdersState {
  const factory _LoadOrders(List<SaleOrder> orders) = _$_LoadOrders;

  List<SaleOrder> get orders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadOrdersCopyWith<_LoadOrders> get copyWith =>
      throw _privateConstructorUsedError;
}
