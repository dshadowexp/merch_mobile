// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 's_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SOrderEventTearOff {
  const _$SOrderEventTearOff();

  _WatchOrder watchOrder(String orderId) {
    return _WatchOrder(
      orderId,
    );
  }

  _OrderReceived orderReceived(
      Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess) {
    return _OrderReceived(
      ordersFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SOrderEvent = _$SOrderEventTearOff();

/// @nodoc
mixin _$SOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) watchOrder,
    required TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)
        orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? watchOrder,
    TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)?
        orderReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrder value) watchOrder,
    required TResult Function(_OrderReceived value) orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrder value)? watchOrder,
    TResult Function(_OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SOrderEventCopyWith<$Res> {
  factory $SOrderEventCopyWith(
          SOrderEvent value, $Res Function(SOrderEvent) then) =
      _$SOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SOrderEventCopyWithImpl<$Res> implements $SOrderEventCopyWith<$Res> {
  _$SOrderEventCopyWithImpl(this._value, this._then);

  final SOrderEvent _value;
  // ignore: unused_field
  final $Res Function(SOrderEvent) _then;
}

/// @nodoc
abstract class _$WatchOrderCopyWith<$Res> {
  factory _$WatchOrderCopyWith(
          _WatchOrder value, $Res Function(_WatchOrder) then) =
      __$WatchOrderCopyWithImpl<$Res>;
  $Res call({String orderId});
}

/// @nodoc
class __$WatchOrderCopyWithImpl<$Res> extends _$SOrderEventCopyWithImpl<$Res>
    implements _$WatchOrderCopyWith<$Res> {
  __$WatchOrderCopyWithImpl(
      _WatchOrder _value, $Res Function(_WatchOrder) _then)
      : super(_value, (v) => _then(v as _WatchOrder));

  @override
  _WatchOrder get _value => super._value as _WatchOrder;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_WatchOrder(
      orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchOrder implements _WatchOrder {
  const _$_WatchOrder(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'SOrderEvent.watchOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchOrder &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderId);

  @JsonKey(ignore: true)
  @override
  _$WatchOrderCopyWith<_WatchOrder> get copyWith =>
      __$WatchOrderCopyWithImpl<_WatchOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) watchOrder,
    required TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)
        orderReceived,
  }) {
    return watchOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? watchOrder,
    TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)?
        orderReceived,
    required TResult orElse(),
  }) {
    if (watchOrder != null) {
      return watchOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrder value) watchOrder,
    required TResult Function(_OrderReceived value) orderReceived,
  }) {
    return watchOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrder value)? watchOrder,
    TResult Function(_OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) {
    if (watchOrder != null) {
      return watchOrder(this);
    }
    return orElse();
  }
}

abstract class _WatchOrder implements SOrderEvent {
  const factory _WatchOrder(String orderId) = _$_WatchOrder;

  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchOrderCopyWith<_WatchOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OrderReceivedCopyWith<$Res> {
  factory _$OrderReceivedCopyWith(
          _OrderReceived value, $Res Function(_OrderReceived) then) =
      __$OrderReceivedCopyWithImpl<$Res>;
  $Res call({Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess});
}

/// @nodoc
class __$OrderReceivedCopyWithImpl<$Res> extends _$SOrderEventCopyWithImpl<$Res>
    implements _$OrderReceivedCopyWith<$Res> {
  __$OrderReceivedCopyWithImpl(
      _OrderReceived _value, $Res Function(_OrderReceived) _then)
      : super(_value, (v) => _then(v as _OrderReceived));

  @override
  _OrderReceived get _value => super._value as _OrderReceived;

  @override
  $Res call({
    Object? ordersFailureOrSuccess = freezed,
  }) {
    return _then(_OrderReceived(
      ordersFailureOrSuccess == freezed
          ? _value.ordersFailureOrSuccess
          : ordersFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<StoreManagerFailure, SaleOrder>,
    ));
  }
}

/// @nodoc

class _$_OrderReceived implements _OrderReceived {
  const _$_OrderReceived(this.ordersFailureOrSuccess);

  @override
  final Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess;

  @override
  String toString() {
    return 'SOrderEvent.orderReceived(ordersFailureOrSuccess: $ordersFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderReceived &&
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
  _$OrderReceivedCopyWith<_OrderReceived> get copyWith =>
      __$OrderReceivedCopyWithImpl<_OrderReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String orderId) watchOrder,
    required TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)
        orderReceived,
  }) {
    return orderReceived(ordersFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String orderId)? watchOrder,
    TResult Function(
            Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess)?
        orderReceived,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(ordersFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOrder value) watchOrder,
    required TResult Function(_OrderReceived value) orderReceived,
  }) {
    return orderReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOrder value)? watchOrder,
    TResult Function(_OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(this);
    }
    return orElse();
  }
}

abstract class _OrderReceived implements SOrderEvent {
  const factory _OrderReceived(
          Either<StoreManagerFailure, SaleOrder> ordersFailureOrSuccess) =
      _$_OrderReceived;

  Either<StoreManagerFailure, SaleOrder> get ordersFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OrderReceivedCopyWith<_OrderReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SOrderStateTearOff {
  const _$SOrderStateTearOff();

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

  _LoadSuccess loadSuccess(SaleOrder order) {
    return _LoadSuccess(
      order,
    );
  }
}

/// @nodoc
const $SOrderState = _$SOrderStateTearOff();

/// @nodoc
mixin _$SOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(SaleOrder order) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(SaleOrder order)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SOrderStateCopyWith<$Res> {
  factory $SOrderStateCopyWith(
          SOrderState value, $Res Function(SOrderState) then) =
      _$SOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SOrderStateCopyWithImpl<$Res> implements $SOrderStateCopyWith<$Res> {
  _$SOrderStateCopyWithImpl(this._value, this._then);

  final SOrderState _value;
  // ignore: unused_field
  final $Res Function(SOrderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SOrderStateCopyWithImpl<$Res>
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
    return 'SOrderState.initial()';
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
    required TResult Function(SaleOrder order) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(SaleOrder order)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SOrderState {
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
    extends _$SOrderStateCopyWithImpl<$Res>
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
    return 'SOrderState.loadInProgress()';
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
    required TResult Function(SaleOrder order) loadSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(SaleOrder order)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SOrderState {
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
class __$LoadFailureCopyWithImpl<$Res> extends _$SOrderStateCopyWithImpl<$Res>
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
    return 'SOrderState.loadFailure(orderFailure: $orderFailure)';
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
    required TResult Function(SaleOrder order) loadSuccess,
  }) {
    return loadFailure(orderFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(SaleOrder order)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SOrderState {
  const factory _LoadFailure(StoreManagerFailure orderFailure) = _$_LoadFailure;

  StoreManagerFailure get orderFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({SaleOrder order});

  $SaleOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SOrderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_LoadSuccess(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SaleOrder,
    ));
  }

  @override
  $SaleOrderCopyWith<$Res> get order {
    return $SaleOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.order);

  @override
  final SaleOrder order;

  @override
  String toString() {
    return 'SOrderState.loadSuccess(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(StoreManagerFailure orderFailure) loadFailure,
    required TResult Function(SaleOrder order) loadSuccess,
  }) {
    return loadSuccess(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(StoreManagerFailure orderFailure)? loadFailure,
    TResult Function(SaleOrder order)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SOrderState {
  const factory _LoadSuccess(SaleOrder order) = _$_LoadSuccess;

  SaleOrder get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
