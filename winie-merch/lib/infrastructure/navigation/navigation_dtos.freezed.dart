// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLongDTO _$LatLongDTOFromJson(Map<String, dynamic> json) {
  return _LatLongDTO.fromJson(json);
}

/// @nodoc
class _$LatLongDTOTearOff {
  const _$LatLongDTOTearOff();

  _LatLongDTO call({required double lat, required double lng}) {
    return _LatLongDTO(
      lat: lat,
      lng: lng,
    );
  }

  LatLongDTO fromJson(Map<String, Object> json) {
    return LatLongDTO.fromJson(json);
  }
}

/// @nodoc
const $LatLongDTO = _$LatLongDTOTearOff();

/// @nodoc
mixin _$LatLongDTO {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLongDTOCopyWith<LatLongDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLongDTOCopyWith<$Res> {
  factory $LatLongDTOCopyWith(
          LatLongDTO value, $Res Function(LatLongDTO) then) =
      _$LatLongDTOCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLongDTOCopyWithImpl<$Res> implements $LatLongDTOCopyWith<$Res> {
  _$LatLongDTOCopyWithImpl(this._value, this._then);

  final LatLongDTO _value;
  // ignore: unused_field
  final $Res Function(LatLongDTO) _then;

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
abstract class _$LatLongDTOCopyWith<$Res> implements $LatLongDTOCopyWith<$Res> {
  factory _$LatLongDTOCopyWith(
          _LatLongDTO value, $Res Function(_LatLongDTO) then) =
      __$LatLongDTOCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$LatLongDTOCopyWithImpl<$Res> extends _$LatLongDTOCopyWithImpl<$Res>
    implements _$LatLongDTOCopyWith<$Res> {
  __$LatLongDTOCopyWithImpl(
      _LatLongDTO _value, $Res Function(_LatLongDTO) _then)
      : super(_value, (v) => _then(v as _LatLongDTO));

  @override
  _LatLongDTO get _value => super._value as _LatLongDTO;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_LatLongDTO(
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
@JsonSerializable()
class _$_LatLongDTO extends _LatLongDTO {
  const _$_LatLongDTO({required this.lat, required this.lng}) : super._();

  factory _$_LatLongDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LatLongDTOFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLongDTO(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LatLongDTO &&
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
  _$LatLongDTOCopyWith<_LatLongDTO> get copyWith =>
      __$LatLongDTOCopyWithImpl<_LatLongDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LatLongDTOToJson(this);
  }
}

abstract class _LatLongDTO extends LatLongDTO {
  const factory _LatLongDTO({required double lat, required double lng}) =
      _$_LatLongDTO;
  const _LatLongDTO._() : super._();

  factory _LatLongDTO.fromJson(Map<String, dynamic> json) =
      _$_LatLongDTO.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LatLongDTOCopyWith<_LatLongDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordsDTO _$CoordsDTOFromJson(Map<String, dynamic> json) {
  return _CoordsDTO.fromJson(json);
}

/// @nodoc
class _$CoordsDTOTearOff {
  const _$CoordsDTOTearOff();

  _CoordsDTO call(
      {required double lat, required double lng, required double bearing}) {
    return _CoordsDTO(
      lat: lat,
      lng: lng,
      bearing: bearing,
    );
  }

  CoordsDTO fromJson(Map<String, Object> json) {
    return CoordsDTO.fromJson(json);
  }
}

/// @nodoc
const $CoordsDTO = _$CoordsDTOTearOff();

/// @nodoc
mixin _$CoordsDTO {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double get bearing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordsDTOCopyWith<CoordsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordsDTOCopyWith<$Res> {
  factory $CoordsDTOCopyWith(CoordsDTO value, $Res Function(CoordsDTO) then) =
      _$CoordsDTOCopyWithImpl<$Res>;
  $Res call({double lat, double lng, double bearing});
}

/// @nodoc
class _$CoordsDTOCopyWithImpl<$Res> implements $CoordsDTOCopyWith<$Res> {
  _$CoordsDTOCopyWithImpl(this._value, this._then);

  final CoordsDTO _value;
  // ignore: unused_field
  final $Res Function(CoordsDTO) _then;

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
abstract class _$CoordsDTOCopyWith<$Res> implements $CoordsDTOCopyWith<$Res> {
  factory _$CoordsDTOCopyWith(
          _CoordsDTO value, $Res Function(_CoordsDTO) then) =
      __$CoordsDTOCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng, double bearing});
}

/// @nodoc
class __$CoordsDTOCopyWithImpl<$Res> extends _$CoordsDTOCopyWithImpl<$Res>
    implements _$CoordsDTOCopyWith<$Res> {
  __$CoordsDTOCopyWithImpl(_CoordsDTO _value, $Res Function(_CoordsDTO) _then)
      : super(_value, (v) => _then(v as _CoordsDTO));

  @override
  _CoordsDTO get _value => super._value as _CoordsDTO;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_CoordsDTO(
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
@JsonSerializable()
class _$_CoordsDTO extends _CoordsDTO {
  const _$_CoordsDTO(
      {required this.lat, required this.lng, required this.bearing})
      : super._();

  factory _$_CoordsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CoordsDTOFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double bearing;

  @override
  String toString() {
    return 'CoordsDTO(lat: $lat, lng: $lng, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoordsDTO &&
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
  _$CoordsDTOCopyWith<_CoordsDTO> get copyWith =>
      __$CoordsDTOCopyWithImpl<_CoordsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoordsDTOToJson(this);
  }
}

abstract class _CoordsDTO extends CoordsDTO {
  const factory _CoordsDTO(
      {required double lat,
      required double lng,
      required double bearing}) = _$_CoordsDTO;
  const _CoordsDTO._() : super._();

  factory _CoordsDTO.fromJson(Map<String, dynamic> json) =
      _$_CoordsDTO.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  double get bearing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoordsDTOCopyWith<_CoordsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TripDTO _$TripDTOFromJson(Map<String, dynamic> json) {
  return _TripDTO.fromJson(json);
}

/// @nodoc
class _$TripDTOTearOff {
  const _$TripDTOTearOff();

  _TripDTO call(
      {required String id,
      required String? driverId,
      required String pickLocation,
      required Map<String, dynamic> pickGeocode,
      required Map<String, dynamic>? driverInfo,
      required Map<String, dynamic>? driverCoords,
      required String time,
      required String distance,
      required int statusCode}) {
    return _TripDTO(
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

  TripDTO fromJson(Map<String, Object> json) {
    return TripDTO.fromJson(json);
  }
}

/// @nodoc
const $TripDTO = _$TripDTOTearOff();

/// @nodoc
mixin _$TripDTO {
  String get id => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String get pickLocation => throw _privateConstructorUsedError;
  Map<String, dynamic> get pickGeocode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get driverInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get driverCoords => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDTOCopyWith<TripDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDTOCopyWith<$Res> {
  factory $TripDTOCopyWith(TripDTO value, $Res Function(TripDTO) then) =
      _$TripDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? driverId,
      String pickLocation,
      Map<String, dynamic> pickGeocode,
      Map<String, dynamic>? driverInfo,
      Map<String, dynamic>? driverCoords,
      String time,
      String distance,
      int statusCode});
}

/// @nodoc
class _$TripDTOCopyWithImpl<$Res> implements $TripDTOCopyWith<$Res> {
  _$TripDTOCopyWithImpl(this._value, this._then);

  final TripDTO _value;
  // ignore: unused_field
  final $Res Function(TripDTO) _then;

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
              as String,
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
              as Map<String, dynamic>,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      driverCoords: driverCoords == freezed
          ? _value.driverCoords
          : driverCoords // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
abstract class _$TripDTOCopyWith<$Res> implements $TripDTOCopyWith<$Res> {
  factory _$TripDTOCopyWith(_TripDTO value, $Res Function(_TripDTO) then) =
      __$TripDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? driverId,
      String pickLocation,
      Map<String, dynamic> pickGeocode,
      Map<String, dynamic>? driverInfo,
      Map<String, dynamic>? driverCoords,
      String time,
      String distance,
      int statusCode});
}

/// @nodoc
class __$TripDTOCopyWithImpl<$Res> extends _$TripDTOCopyWithImpl<$Res>
    implements _$TripDTOCopyWith<$Res> {
  __$TripDTOCopyWithImpl(_TripDTO _value, $Res Function(_TripDTO) _then)
      : super(_value, (v) => _then(v as _TripDTO));

  @override
  _TripDTO get _value => super._value as _TripDTO;

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
    return _then(_TripDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as Map<String, dynamic>,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      driverCoords: driverCoords == freezed
          ? _value.driverCoords
          : driverCoords // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
@JsonSerializable()
class _$_TripDTO extends _TripDTO {
  const _$_TripDTO(
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

  factory _$_TripDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TripDTOFromJson(json);

  @override
  final String id;
  @override
  final String? driverId;
  @override
  final String pickLocation;
  @override
  final Map<String, dynamic> pickGeocode;
  @override
  final Map<String, dynamic>? driverInfo;
  @override
  final Map<String, dynamic>? driverCoords;
  @override
  final String time;
  @override
  final String distance;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'TripDTO(id: $id, driverId: $driverId, pickLocation: $pickLocation, pickGeocode: $pickGeocode, driverInfo: $driverInfo, driverCoords: $driverCoords, time: $time, distance: $distance, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripDTO &&
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
  _$TripDTOCopyWith<_TripDTO> get copyWith =>
      __$TripDTOCopyWithImpl<_TripDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TripDTOToJson(this);
  }
}

abstract class _TripDTO extends TripDTO {
  const factory _TripDTO(
      {required String id,
      required String? driverId,
      required String pickLocation,
      required Map<String, dynamic> pickGeocode,
      required Map<String, dynamic>? driverInfo,
      required Map<String, dynamic>? driverCoords,
      required String time,
      required String distance,
      required int statusCode}) = _$_TripDTO;
  const _TripDTO._() : super._();

  factory _TripDTO.fromJson(Map<String, dynamic> json) = _$_TripDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get driverId => throw _privateConstructorUsedError;
  @override
  String get pickLocation => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get pickGeocode => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get driverInfo => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get driverCoords => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  String get distance => throw _privateConstructorUsedError;
  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TripDTOCopyWith<_TripDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
