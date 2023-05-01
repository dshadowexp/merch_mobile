// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatLongDTO _$_$_LatLongDTOFromJson(Map<String, dynamic> json) {
  return _$_LatLongDTO(
    lat: (json['lat'] as num).toDouble(),
    lng: (json['lng'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_LatLongDTOToJson(_$_LatLongDTO instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_CoordsDTO _$_$_CoordsDTOFromJson(Map<String, dynamic> json) {
  return _$_CoordsDTO(
    lat: (json['lat'] as num).toDouble(),
    lng: (json['lng'] as num).toDouble(),
    bearing: (json['bearing'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_CoordsDTOToJson(_$_CoordsDTO instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'bearing': instance.bearing,
    };

_$_TripDTO _$_$_TripDTOFromJson(Map<String, dynamic> json) {
  return _$_TripDTO(
    id: json['id'] as String,
    driverId: json['driverId'] as String?,
    pickLocation: json['pickLocation'] as String,
    pickGeocode: json['pickGeocode'] as Map<String, dynamic>,
    driverInfo: json['driverInfo'] as Map<String, dynamic>?,
    driverCoords: json['driverCoords'] as Map<String, dynamic>?,
    time: json['time'] as String,
    distance: json['distance'] as String,
    statusCode: json['statusCode'] as int,
  );
}

Map<String, dynamic> _$_$_TripDTOToJson(_$_TripDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driverId': instance.driverId,
      'pickLocation': instance.pickLocation,
      'pickGeocode': instance.pickGeocode,
      'driverInfo': instance.driverInfo,
      'driverCoords': instance.driverCoords,
      'time': instance.time,
      'distance': instance.distance,
      'statusCode': instance.statusCode,
    };
