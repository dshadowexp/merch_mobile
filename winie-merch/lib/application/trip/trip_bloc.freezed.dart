// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripEventTearOff {
  const _$TripEventTearOff();

  _Distributed distributed(SaleOrder order, LatLong position) {
    return _Distributed(
      order,
      position,
    );
  }

  _Readied readied(LatLong latlng) {
    return _Readied(
      latlng,
    );
  }

  _NearbiesReceived nearbiesReceived(List<Coords> nearbies) {
    return _NearbiesReceived(
      nearbies,
    );
  }

  _Requested requested(UniqueId storeOrderId, String address, LatLong latlng) {
    return _Requested(
      storeOrderId,
      address,
      latlng,
    );
  }

  _TripReceived tripReceived(Either<DispatchFailure, Trip> failureOrTrip) {
    return _TripReceived(
      failureOrTrip,
    );
  }

  _Tracking tracking(UniqueId storeOrderId) {
    return _Tracking(
      storeOrderId,
    );
  }
}

/// @nodoc
const $TripEvent = _$TripEventTearOff();

/// @nodoc
mixin _$TripEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res> implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  final TripEvent _value;
  // ignore: unused_field
  final $Res Function(TripEvent) _then;
}

/// @nodoc
abstract class _$DistributedCopyWith<$Res> {
  factory _$DistributedCopyWith(
          _Distributed value, $Res Function(_Distributed) then) =
      __$DistributedCopyWithImpl<$Res>;
  $Res call({SaleOrder order, LatLong position});

  $SaleOrderCopyWith<$Res> get order;
  $LatLongCopyWith<$Res> get position;
}

/// @nodoc
class __$DistributedCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$DistributedCopyWith<$Res> {
  __$DistributedCopyWithImpl(
      _Distributed _value, $Res Function(_Distributed) _then)
      : super(_value, (v) => _then(v as _Distributed));

  @override
  _Distributed get _value => super._value as _Distributed;

  @override
  $Res call({
    Object? order = freezed,
    Object? position = freezed,
  }) {
    return _then(_Distributed(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SaleOrder,
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ));
  }

  @override
  $SaleOrderCopyWith<$Res> get order {
    return $SaleOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  @override
  $LatLongCopyWith<$Res> get position {
    return $LatLongCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc

class _$_Distributed implements _Distributed {
  const _$_Distributed(this.order, this.position);

  @override
  final SaleOrder order;
  @override
  final LatLong position;

  @override
  String toString() {
    return 'TripEvent.distributed(order: $order, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Distributed &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$DistributedCopyWith<_Distributed> get copyWith =>
      __$DistributedCopyWithImpl<_Distributed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return distributed(order, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (distributed != null) {
      return distributed(order, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return distributed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (distributed != null) {
      return distributed(this);
    }
    return orElse();
  }
}

abstract class _Distributed implements TripEvent {
  const factory _Distributed(SaleOrder order, LatLong position) =
      _$_Distributed;

  SaleOrder get order => throw _privateConstructorUsedError;
  LatLong get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DistributedCopyWith<_Distributed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadiedCopyWith<$Res> {
  factory _$ReadiedCopyWith(_Readied value, $Res Function(_Readied) then) =
      __$ReadiedCopyWithImpl<$Res>;
  $Res call({LatLong latlng});

  $LatLongCopyWith<$Res> get latlng;
}

/// @nodoc
class __$ReadiedCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$ReadiedCopyWith<$Res> {
  __$ReadiedCopyWithImpl(_Readied _value, $Res Function(_Readied) _then)
      : super(_value, (v) => _then(v as _Readied));

  @override
  _Readied get _value => super._value as _Readied;

  @override
  $Res call({
    Object? latlng = freezed,
  }) {
    return _then(_Readied(
      latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ));
  }

  @override
  $LatLongCopyWith<$Res> get latlng {
    return $LatLongCopyWith<$Res>(_value.latlng, (value) {
      return _then(_value.copyWith(latlng: value));
    });
  }
}

/// @nodoc

class _$_Readied implements _Readied {
  const _$_Readied(this.latlng);

  @override
  final LatLong latlng;

  @override
  String toString() {
    return 'TripEvent.readied(latlng: $latlng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Readied &&
            (identical(other.latlng, latlng) ||
                const DeepCollectionEquality().equals(other.latlng, latlng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(latlng);

  @JsonKey(ignore: true)
  @override
  _$ReadiedCopyWith<_Readied> get copyWith =>
      __$ReadiedCopyWithImpl<_Readied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return readied(latlng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (readied != null) {
      return readied(latlng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return readied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (readied != null) {
      return readied(this);
    }
    return orElse();
  }
}

abstract class _Readied implements TripEvent {
  const factory _Readied(LatLong latlng) = _$_Readied;

  LatLong get latlng => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadiedCopyWith<_Readied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NearbiesReceivedCopyWith<$Res> {
  factory _$NearbiesReceivedCopyWith(
          _NearbiesReceived value, $Res Function(_NearbiesReceived) then) =
      __$NearbiesReceivedCopyWithImpl<$Res>;
  $Res call({List<Coords> nearbies});
}

/// @nodoc
class __$NearbiesReceivedCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res>
    implements _$NearbiesReceivedCopyWith<$Res> {
  __$NearbiesReceivedCopyWithImpl(
      _NearbiesReceived _value, $Res Function(_NearbiesReceived) _then)
      : super(_value, (v) => _then(v as _NearbiesReceived));

  @override
  _NearbiesReceived get _value => super._value as _NearbiesReceived;

  @override
  $Res call({
    Object? nearbies = freezed,
  }) {
    return _then(_NearbiesReceived(
      nearbies == freezed
          ? _value.nearbies
          : nearbies // ignore: cast_nullable_to_non_nullable
              as List<Coords>,
    ));
  }
}

/// @nodoc

class _$_NearbiesReceived implements _NearbiesReceived {
  const _$_NearbiesReceived(this.nearbies);

  @override
  final List<Coords> nearbies;

  @override
  String toString() {
    return 'TripEvent.nearbiesReceived(nearbies: $nearbies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NearbiesReceived &&
            (identical(other.nearbies, nearbies) ||
                const DeepCollectionEquality()
                    .equals(other.nearbies, nearbies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nearbies);

  @JsonKey(ignore: true)
  @override
  _$NearbiesReceivedCopyWith<_NearbiesReceived> get copyWith =>
      __$NearbiesReceivedCopyWithImpl<_NearbiesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return nearbiesReceived(nearbies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (nearbiesReceived != null) {
      return nearbiesReceived(nearbies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return nearbiesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (nearbiesReceived != null) {
      return nearbiesReceived(this);
    }
    return orElse();
  }
}

abstract class _NearbiesReceived implements TripEvent {
  const factory _NearbiesReceived(List<Coords> nearbies) = _$_NearbiesReceived;

  List<Coords> get nearbies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NearbiesReceivedCopyWith<_NearbiesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestedCopyWith<$Res> {
  factory _$RequestedCopyWith(
          _Requested value, $Res Function(_Requested) then) =
      __$RequestedCopyWithImpl<$Res>;
  $Res call({UniqueId storeOrderId, String address, LatLong latlng});

  $LatLongCopyWith<$Res> get latlng;
}

/// @nodoc
class __$RequestedCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$RequestedCopyWith<$Res> {
  __$RequestedCopyWithImpl(_Requested _value, $Res Function(_Requested) _then)
      : super(_value, (v) => _then(v as _Requested));

  @override
  _Requested get _value => super._value as _Requested;

  @override
  $Res call({
    Object? storeOrderId = freezed,
    Object? address = freezed,
    Object? latlng = freezed,
  }) {
    return _then(_Requested(
      storeOrderId == freezed
          ? _value.storeOrderId
          : storeOrderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ));
  }

  @override
  $LatLongCopyWith<$Res> get latlng {
    return $LatLongCopyWith<$Res>(_value.latlng, (value) {
      return _then(_value.copyWith(latlng: value));
    });
  }
}

/// @nodoc

class _$_Requested implements _Requested {
  const _$_Requested(this.storeOrderId, this.address, this.latlng);

  @override
  final UniqueId storeOrderId;
  @override
  final String address;
  @override
  final LatLong latlng;

  @override
  String toString() {
    return 'TripEvent.requested(storeOrderId: $storeOrderId, address: $address, latlng: $latlng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Requested &&
            (identical(other.storeOrderId, storeOrderId) ||
                const DeepCollectionEquality()
                    .equals(other.storeOrderId, storeOrderId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.latlng, latlng) ||
                const DeepCollectionEquality().equals(other.latlng, latlng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(storeOrderId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(latlng);

  @JsonKey(ignore: true)
  @override
  _$RequestedCopyWith<_Requested> get copyWith =>
      __$RequestedCopyWithImpl<_Requested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return requested(storeOrderId, address, latlng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(storeOrderId, address, latlng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements TripEvent {
  const factory _Requested(
      UniqueId storeOrderId, String address, LatLong latlng) = _$_Requested;

  UniqueId get storeOrderId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  LatLong get latlng => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestedCopyWith<_Requested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TripReceivedCopyWith<$Res> {
  factory _$TripReceivedCopyWith(
          _TripReceived value, $Res Function(_TripReceived) then) =
      __$TripReceivedCopyWithImpl<$Res>;
  $Res call({Either<DispatchFailure, Trip> failureOrTrip});
}

/// @nodoc
class __$TripReceivedCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$TripReceivedCopyWith<$Res> {
  __$TripReceivedCopyWithImpl(
      _TripReceived _value, $Res Function(_TripReceived) _then)
      : super(_value, (v) => _then(v as _TripReceived));

  @override
  _TripReceived get _value => super._value as _TripReceived;

  @override
  $Res call({
    Object? failureOrTrip = freezed,
  }) {
    return _then(_TripReceived(
      failureOrTrip == freezed
          ? _value.failureOrTrip
          : failureOrTrip // ignore: cast_nullable_to_non_nullable
              as Either<DispatchFailure, Trip>,
    ));
  }
}

/// @nodoc

class _$_TripReceived implements _TripReceived {
  const _$_TripReceived(this.failureOrTrip);

  @override
  final Either<DispatchFailure, Trip> failureOrTrip;

  @override
  String toString() {
    return 'TripEvent.tripReceived(failureOrTrip: $failureOrTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripReceived &&
            (identical(other.failureOrTrip, failureOrTrip) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTrip, failureOrTrip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrTrip);

  @JsonKey(ignore: true)
  @override
  _$TripReceivedCopyWith<_TripReceived> get copyWith =>
      __$TripReceivedCopyWithImpl<_TripReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return tripReceived(failureOrTrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (tripReceived != null) {
      return tripReceived(failureOrTrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return tripReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (tripReceived != null) {
      return tripReceived(this);
    }
    return orElse();
  }
}

abstract class _TripReceived implements TripEvent {
  const factory _TripReceived(Either<DispatchFailure, Trip> failureOrTrip) =
      _$_TripReceived;

  Either<DispatchFailure, Trip> get failureOrTrip =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TripReceivedCopyWith<_TripReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TrackingCopyWith<$Res> {
  factory _$TrackingCopyWith(_Tracking value, $Res Function(_Tracking) then) =
      __$TrackingCopyWithImpl<$Res>;
  $Res call({UniqueId storeOrderId});
}

/// @nodoc
class __$TrackingCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$TrackingCopyWith<$Res> {
  __$TrackingCopyWithImpl(_Tracking _value, $Res Function(_Tracking) _then)
      : super(_value, (v) => _then(v as _Tracking));

  @override
  _Tracking get _value => super._value as _Tracking;

  @override
  $Res call({
    Object? storeOrderId = freezed,
  }) {
    return _then(_Tracking(
      storeOrderId == freezed
          ? _value.storeOrderId
          : storeOrderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Tracking implements _Tracking {
  const _$_Tracking(this.storeOrderId);

  @override
  final UniqueId storeOrderId;

  @override
  String toString() {
    return 'TripEvent.tracking(storeOrderId: $storeOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tracking &&
            (identical(other.storeOrderId, storeOrderId) ||
                const DeepCollectionEquality()
                    .equals(other.storeOrderId, storeOrderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeOrderId);

  @JsonKey(ignore: true)
  @override
  _$TrackingCopyWith<_Tracking> get copyWith =>
      __$TrackingCopyWithImpl<_Tracking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaleOrder order, LatLong position) distributed,
    required TResult Function(LatLong latlng) readied,
    required TResult Function(List<Coords> nearbies) nearbiesReceived,
    required TResult Function(
            UniqueId storeOrderId, String address, LatLong latlng)
        requested,
    required TResult Function(Either<DispatchFailure, Trip> failureOrTrip)
        tripReceived,
    required TResult Function(UniqueId storeOrderId) tracking,
  }) {
    return tracking(storeOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaleOrder order, LatLong position)? distributed,
    TResult Function(LatLong latlng)? readied,
    TResult Function(List<Coords> nearbies)? nearbiesReceived,
    TResult Function(UniqueId storeOrderId, String address, LatLong latlng)?
        requested,
    TResult Function(Either<DispatchFailure, Trip> failureOrTrip)? tripReceived,
    TResult Function(UniqueId storeOrderId)? tracking,
    required TResult orElse(),
  }) {
    if (tracking != null) {
      return tracking(storeOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Distributed value) distributed,
    required TResult Function(_Readied value) readied,
    required TResult Function(_NearbiesReceived value) nearbiesReceived,
    required TResult Function(_Requested value) requested,
    required TResult Function(_TripReceived value) tripReceived,
    required TResult Function(_Tracking value) tracking,
  }) {
    return tracking(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Distributed value)? distributed,
    TResult Function(_Readied value)? readied,
    TResult Function(_NearbiesReceived value)? nearbiesReceived,
    TResult Function(_Requested value)? requested,
    TResult Function(_TripReceived value)? tripReceived,
    TResult Function(_Tracking value)? tracking,
    required TResult orElse(),
  }) {
    if (tracking != null) {
      return tracking(this);
    }
    return orElse();
  }
}

abstract class _Tracking implements TripEvent {
  const factory _Tracking(UniqueId storeOrderId) = _$_Tracking;

  UniqueId get storeOrderId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TrackingCopyWith<_Tracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TripStateTearOff {
  const _$TripStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Ready ready(List<Coords> drivers) {
    return _Ready(
      drivers,
    );
  }

  _Requesting requesting(String response, bool load) {
    return _Requesting(
      response,
      load,
    );
  }

  _PickingUp pickingUp(Trip trip) {
    return _PickingUp(
      trip,
    );
  }
}

/// @nodoc
const $TripState = _$TripStateTearOff();

/// @nodoc
mixin _$TripState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Coords> drivers) ready,
    required TResult Function(String response, bool load) requesting,
    required TResult Function(Trip trip) pickingUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Coords> drivers)? ready,
    TResult Function(String response, bool load)? requesting,
    TResult Function(Trip trip)? pickingUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_PickingUp value) pickingUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_PickingUp value)? pickingUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res> implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  final TripState _value;
  // ignore: unused_field
  final $Res Function(TripState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
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
    return 'TripState.initial()';
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
    required TResult Function(List<Coords> drivers) ready,
    required TResult Function(String response, bool load) requesting,
    required TResult Function(Trip trip) pickingUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Coords> drivers)? ready,
    TResult Function(String response, bool load)? requesting,
    TResult Function(Trip trip)? pickingUp,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_PickingUp value) pickingUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_PickingUp value)? pickingUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({List<Coords> drivers});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object? drivers = freezed,
  }) {
    return _then(_Ready(
      drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Coords>,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.drivers);

  @override
  final List<Coords> drivers;

  @override
  String toString() {
    return 'TripState.ready(drivers: $drivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ready &&
            (identical(other.drivers, drivers) ||
                const DeepCollectionEquality().equals(other.drivers, drivers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drivers);

  @JsonKey(ignore: true)
  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Coords> drivers) ready,
    required TResult Function(String response, bool load) requesting,
    required TResult Function(Trip trip) pickingUp,
  }) {
    return ready(drivers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Coords> drivers)? ready,
    TResult Function(String response, bool load)? requesting,
    TResult Function(Trip trip)? pickingUp,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(drivers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_PickingUp value) pickingUp,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_PickingUp value)? pickingUp,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements TripState {
  const factory _Ready(List<Coords> drivers) = _$_Ready;

  List<Coords> get drivers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyCopyWith<_Ready> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestingCopyWith<$Res> {
  factory _$RequestingCopyWith(
          _Requesting value, $Res Function(_Requesting) then) =
      __$RequestingCopyWithImpl<$Res>;
  $Res call({String response, bool load});
}

/// @nodoc
class __$RequestingCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
    implements _$RequestingCopyWith<$Res> {
  __$RequestingCopyWithImpl(
      _Requesting _value, $Res Function(_Requesting) _then)
      : super(_value, (v) => _then(v as _Requesting));

  @override
  _Requesting get _value => super._value as _Requesting;

  @override
  $Res call({
    Object? response = freezed,
    Object? load = freezed,
  }) {
    return _then(_Requesting(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Requesting implements _Requesting {
  const _$_Requesting(this.response, this.load);

  @override
  final String response;
  @override
  final bool load;

  @override
  String toString() {
    return 'TripState.requesting(response: $response, load: $load)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Requesting &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.load, load) ||
                const DeepCollectionEquality().equals(other.load, load)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(load);

  @JsonKey(ignore: true)
  @override
  _$RequestingCopyWith<_Requesting> get copyWith =>
      __$RequestingCopyWithImpl<_Requesting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Coords> drivers) ready,
    required TResult Function(String response, bool load) requesting,
    required TResult Function(Trip trip) pickingUp,
  }) {
    return requesting(response, load);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Coords> drivers)? ready,
    TResult Function(String response, bool load)? requesting,
    TResult Function(Trip trip)? pickingUp,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(response, load);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_PickingUp value) pickingUp,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_PickingUp value)? pickingUp,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }
}

abstract class _Requesting implements TripState {
  const factory _Requesting(String response, bool load) = _$_Requesting;

  String get response => throw _privateConstructorUsedError;
  bool get load => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestingCopyWith<_Requesting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PickingUpCopyWith<$Res> {
  factory _$PickingUpCopyWith(
          _PickingUp value, $Res Function(_PickingUp) then) =
      __$PickingUpCopyWithImpl<$Res>;
  $Res call({Trip trip});

  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$PickingUpCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
    implements _$PickingUpCopyWith<$Res> {
  __$PickingUpCopyWithImpl(_PickingUp _value, $Res Function(_PickingUp) _then)
      : super(_value, (v) => _then(v as _PickingUp));

  @override
  _PickingUp get _value => super._value as _PickingUp;

  @override
  $Res call({
    Object? trip = freezed,
  }) {
    return _then(_PickingUp(
      trip == freezed
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
    ));
  }

  @override
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value));
    });
  }
}

/// @nodoc

class _$_PickingUp implements _PickingUp {
  const _$_PickingUp(this.trip);

  @override
  final Trip trip;

  @override
  String toString() {
    return 'TripState.pickingUp(trip: $trip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PickingUp &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trip);

  @JsonKey(ignore: true)
  @override
  _$PickingUpCopyWith<_PickingUp> get copyWith =>
      __$PickingUpCopyWithImpl<_PickingUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Coords> drivers) ready,
    required TResult Function(String response, bool load) requesting,
    required TResult Function(Trip trip) pickingUp,
  }) {
    return pickingUp(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Coords> drivers)? ready,
    TResult Function(String response, bool load)? requesting,
    TResult Function(Trip trip)? pickingUp,
    required TResult orElse(),
  }) {
    if (pickingUp != null) {
      return pickingUp(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_PickingUp value) pickingUp,
  }) {
    return pickingUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_PickingUp value)? pickingUp,
    required TResult orElse(),
  }) {
    if (pickingUp != null) {
      return pickingUp(this);
    }
    return orElse();
  }
}

abstract class _PickingUp implements TripState {
  const factory _PickingUp(Trip trip) = _$_PickingUp;

  Trip get trip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PickingUpCopyWith<_PickingUp> get copyWith =>
      throw _privateConstructorUsedError;
}
