// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripTearOff {
  const _$TripTearOff();

  _Trip call(
      {required UniqueId id,
      required String? driverId,
      required String pickLocation,
      required LatLong pickGeocode,
      required Info? driverInfo,
      required Coords? driverCoords,
      required String time,
      required String distance,
      required int statusCode}) {
    return _Trip(
      id: id,
      driverId: driverId,
      pickLocation: pickLocation,
      pickGeocode: pickGeocode,
      driverInfo: driverInfo,
      driverCoords: driverCoords,
      time: time,
      distance: distance,
      statusCode: statusCode,
    );
  }
}

/// @nodoc
const $Trip = _$TripTearOff();

/// @nodoc
mixin _$Trip {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String get pickLocation => throw _privateConstructorUsedError;
  LatLong get pickGeocode => throw _privateConstructorUsedError;
  Info? get driverInfo => throw _privateConstructorUsedError;
  Coords? get driverCoords => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String? driverId,
      String pickLocation,
      LatLong pickGeocode,
      Info? driverInfo,
      Coords? driverCoords,
      String time,
      String distance,
      int statusCode});

  $LatLongCopyWith<$Res> get pickGeocode;
  $CoordsCopyWith<$Res>? get driverCoords;
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? pickLocation = freezed,
    Object? pickGeocode = freezed,
    Object? driverInfo = freezed,
    Object? driverCoords = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickLocation: pickLocation == freezed
          ? _value.pickLocation
          : pickLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickGeocode: pickGeocode == freezed
          ? _value.pickGeocode
          : pickGeocode // ignore: cast_nullable_to_non_nullable
              as LatLong,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Info?,
      driverCoords: driverCoords == freezed
          ? _value.driverCoords
          : driverCoords // ignore: cast_nullable_to_non_nullable
              as Coords?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $LatLongCopyWith<$Res> get pickGeocode {
    return $LatLongCopyWith<$Res>(_value.pickGeocode, (value) {
      return _then(_value.copyWith(pickGeocode: value));
    });
  }

  @override
  $CoordsCopyWith<$Res>? get driverCoords {
    if (_value.driverCoords == null) {
      return null;
    }

    return $CoordsCopyWith<$Res>(_value.driverCoords!, (value) {
      return _then(_value.copyWith(driverCoords: value));
    });
  }
}

/// @nodoc
abstract class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) then) =
      __$TripCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String? driverId,
      String pickLocation,
      LatLong pickGeocode,
      Info? driverInfo,
      Coords? driverCoords,
      String time,
      String distance,
      int statusCode});

  @override
  $LatLongCopyWith<$Res> get pickGeocode;
  @override
  $CoordsCopyWith<$Res>? get driverCoords;
}

/// @nodoc
class __$TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(_Trip _value, $Res Function(_Trip) _then)
      : super(_value, (v) => _then(v as _Trip));

  @override
  _Trip get _value => super._value as _Trip;

  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? pickLocation = freezed,
    Object? pickGeocode = freezed,
    Object? driverInfo = freezed,
    Object? driverCoords = freezed,
    Object? time = freezed,
    Object? distance = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_Trip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      pickLocation: pickLocation == freezed
          ? _value.pickLocation
          : pickLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickGeocode: pickGeocode == freezed
          ? _value.pickGeocode
          : pickGeocode // ignore: cast_nullable_to_non_nullable
              as LatLong,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Info?,
      driverCoords: driverCoords == freezed
          ? _value.driverCoords
          : driverCoords // ignore: cast_nullable_to_non_nullable
              as Coords?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Trip extends _Trip {
  const _$_Trip(
      {required this.id,
      required this.driverId,
      required this.pickLocation,
      required this.pickGeocode,
      required this.driverInfo,
      required this.driverCoords,
      required this.time,
      required this.distance,
      required this.statusCode})
      : super._();

  @override
  final UniqueId id;
  @override
  final String? driverId;
  @override
  final String pickLocation;
  @override
  final LatLong pickGeocode;
  @override
  final Info? driverInfo;
  @override
  final Coords? driverCoords;
  @override
  final String time;
  @override
  final String distance;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'Trip(id: $id, driverId: $driverId, pickLocation: $pickLocation, pickGeocode: $pickGeocode, driverInfo: $driverInfo, driverCoords: $driverCoords, time: $time, distance: $distance, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.pickLocation, pickLocation) ||
                const DeepCollectionEquality()
                    .equals(other.pickLocation, pickLocation)) &&
            (identical(other.pickGeocode, pickGeocode) ||
                const DeepCollectionEquality()
                    .equals(other.pickGeocode, pickGeocode)) &&
            (identical(other.driverInfo, driverInfo) ||
                const DeepCollectionEquality()
                    .equals(other.driverInfo, driverInfo)) &&
            (identical(other.driverCoords, driverCoords) ||
                const DeepCollectionEquality()
                    .equals(other.driverCoords, driverCoords)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(pickLocation) ^
      const DeepCollectionEquality().hash(pickGeocode) ^
      const DeepCollectionEquality().hash(driverInfo) ^
      const DeepCollectionEquality().hash(driverCoords) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(statusCode);

  @JsonKey(ignore: true)
  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);
}

abstract class _Trip extends Trip {
  const factory _Trip(
      {required UniqueId id,
      required String? driverId,
      required String pickLocation,
      required LatLong pickGeocode,
      required Info? driverInfo,
      required Coords? driverCoords,
      required String time,
      required String distance,
      required int statusCode}) = _$_Trip;
  const _Trip._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String? get driverId => throw _privateConstructorUsedError;
  @override
  String get pickLocation => throw _privateConstructorUsedError;
  @override
  LatLong get pickGeocode => throw _privateConstructorUsedError;
  @override
  Info? get driverInfo => throw _privateConstructorUsedError;
  @override
  Coords? get driverCoords => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  String get distance => throw _privateConstructorUsedError;
  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TripCopyWith<_Trip> get copyWith => throw _privateConstructorUsedError;
}
