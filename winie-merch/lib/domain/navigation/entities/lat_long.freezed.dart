// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lat_long.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LatLongTearOff {
  const _$LatLongTearOff();

  _LatLong call({required double lat, required double lng}) {
    return _LatLong(
      lat: lat,
      lng: lng,
    );
  }
}

/// @nodoc
const $LatLong = _$LatLongTearOff();

/// @nodoc
mixin _$LatLong {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LatLongCopyWith<LatLong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLongCopyWith<$Res> {
  factory $LatLongCopyWith(LatLong value, $Res Function(LatLong) then) =
      _$LatLongCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLongCopyWithImpl<$Res> implements $LatLongCopyWith<$Res> {
  _$LatLongCopyWithImpl(this._value, this._then);

  final LatLong _value;
  // ignore: unused_field
  final $Res Function(LatLong) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LatLongCopyWith<$Res> implements $LatLongCopyWith<$Res> {
  factory _$LatLongCopyWith(_LatLong value, $Res Function(_LatLong) then) =
      __$LatLongCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$LatLongCopyWithImpl<$Res> extends _$LatLongCopyWithImpl<$Res>
    implements _$LatLongCopyWith<$Res> {
  __$LatLongCopyWithImpl(_LatLong _value, $Res Function(_LatLong) _then)
      : super(_value, (v) => _then(v as _LatLong));

  @override
  _LatLong get _value => super._value as _LatLong;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_LatLong(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LatLong extends _LatLong {
  const _$_LatLong({required this.lat, required this.lng}) : super._();

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLong(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LatLong &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng);

  @JsonKey(ignore: true)
  @override
  _$LatLongCopyWith<_LatLong> get copyWith =>
      __$LatLongCopyWithImpl<_LatLong>(this, _$identity);
}

abstract class _LatLong extends LatLong {
  const factory _LatLong({required double lat, required double lng}) =
      _$_LatLong;
  const _LatLong._() : super._();

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LatLongCopyWith<_LatLong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoordsTearOff {
  const _$CoordsTearOff();

  _Coords call(
      {required double lat, required double lng, required double bearing}) {
    return _Coords(
      lat: lat,
      lng: lng,
      bearing: bearing,
    );
  }
}

/// @nodoc
const $Coords = _$CoordsTearOff();

/// @nodoc
mixin _$Coords {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double get bearing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordsCopyWith<Coords> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordsCopyWith<$Res> {
  factory $CoordsCopyWith(Coords value, $Res Function(Coords) then) =
      _$CoordsCopyWithImpl<$Res>;
  $Res call({double lat, double lng, double bearing});
}

/// @nodoc
class _$CoordsCopyWithImpl<$Res> implements $CoordsCopyWith<$Res> {
  _$CoordsCopyWithImpl(this._value, this._then);

  final Coords _value;
  // ignore: unused_field
  final $Res Function(Coords) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordsCopyWith<$Res> implements $CoordsCopyWith<$Res> {
  factory _$CoordsCopyWith(_Coords value, $Res Function(_Coords) then) =
      __$CoordsCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng, double bearing});
}

/// @nodoc
class __$CoordsCopyWithImpl<$Res> extends _$CoordsCopyWithImpl<$Res>
    implements _$CoordsCopyWith<$Res> {
  __$CoordsCopyWithImpl(_Coords _value, $Res Function(_Coords) _then)
      : super(_value, (v) => _then(v as _Coords));

  @override
  _Coords get _value => super._value as _Coords;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_Coords(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Coords extends _Coords {
  const _$_Coords({required this.lat, required this.lng, required this.bearing})
      : super._();

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double bearing;

  @override
  String toString() {
    return 'Coords(lat: $lat, lng: $lng, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coords &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality().equals(other.bearing, bearing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(bearing);

  @JsonKey(ignore: true)
  @override
  _$CoordsCopyWith<_Coords> get copyWith =>
      __$CoordsCopyWithImpl<_Coords>(this, _$identity);
}

abstract class _Coords extends Coords {
  const factory _Coords(
      {required double lat,
      required double lng,
      required double bearing}) = _$_Coords;
  const _Coords._() : super._();

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  double get bearing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoordsCopyWith<_Coords> get copyWith => throw _privateConstructorUsedError;
}
