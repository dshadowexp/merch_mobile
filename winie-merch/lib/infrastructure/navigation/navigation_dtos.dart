import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';

part 'navigation_dtos.freezed.dart';
part 'navigation_dtos.g.dart';

@freezed
abstract class LatLongDTO implements _$LatLongDTO {
  const LatLongDTO._();

  const factory LatLongDTO({
    required double lat,
    required double lng,
  }) = _LatLongDTO;

  factory LatLongDTO.fromDomain(LatLong latlng) {
    return LatLongDTO(
      lat: latlng.lat,
      lng: latlng.lng,
    );
  }

  LatLong toDomain() {
    return LatLong(
      lat: lat,
      lng: lng,
    );
  }

  factory LatLongDTO.fromJson(Map<String, dynamic> json) =>
      _$LatLongDTOFromJson(json);
}

@freezed
abstract class CoordsDTO implements _$CoordsDTO {
  const CoordsDTO._();

  const factory CoordsDTO({
    required double lat,
    required double lng,
    required double bearing,
  }) = _CoordsDTO;

  factory CoordsDTO.fromDomain(Coords coords) {
    return CoordsDTO(
      lat: coords.lat,
      lng: coords.lng,
      bearing: coords.bearing,
    );
  }

  Coords toDomain() {
    return Coords(
      lat: lat,
      lng: lng,
      bearing: bearing,
    );
  }

  factory CoordsDTO.fromJson(Map<String, dynamic> json) =>
      _$CoordsDTOFromJson(json);

  factory CoordsDTO.fromFirestore(DocumentSnapshot doc) {
    //return CoordsDTO.fromJson(doc.data() as Map<String, dynamic>);
    var data = doc.data() as Map<String, dynamic>;

    return CoordsDTO(
      lat: data['position']['geopoint'].latitude,
      lng: data['position']['geopoint'].longitude,
      bearing: data['bearing'],
    );
  }
}

@freezed
abstract class TripDTO implements _$TripDTO {
  const TripDTO._();

  const factory TripDTO({
    required String id,
    required String? driverId,
    required String pickLocation,
    required Map<String, dynamic> pickGeocode,
    required Map<String, dynamic>? driverInfo,
    required Map<String, dynamic>? driverCoords,
    required String time,
    required String distance,
    required int statusCode,
  }) = _TripDTO;

  Trip toDomain() {
    return Trip(
      id: UniqueId.fromUniqueString(id),
      driverId: driverId,
      pickLocation: pickLocation,
      driverInfo: driverInfo == null
          ? null
          : Info(
              driverInfo!['name'],
              driverInfo!['phoneNumber'],
              driverInfo!['photo'],
              driverInfo!['rating'].toDouble(),
            ),
      pickGeocode: LatLongDTO.fromJson(pickGeocode).toDomain(),
      driverCoords: driverCoords != null
          ? CoordsDTO.fromJson(driverCoords!).toDomain()
          : null,
      time: time,
      distance: distance,
      statusCode: statusCode,
    );
  }

  factory TripDTO.fromJson(Map<String, dynamic> json) =>
      _$TripDTOFromJson(json);

  factory TripDTO.fromFirestore(DocumentSnapshot doc) {
    return TripDTO.fromJson(doc.data() as Map<String, dynamic>);
  }
}

class Suggestion {
  final String placeId;
  final String description;
  final String detail;

  Suggestion(this.placeId, this.description, this.detail);

  @override
  String toString() {
    return 'Suggestion(description: $description, detail: $detail, placeId: $placeId)';
  }
}
