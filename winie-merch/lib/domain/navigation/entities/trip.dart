import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

import 'lat_long.dart';

part 'trip.freezed.dart';

@freezed
abstract class Trip implements _$Trip {
  const Trip._();

  const factory Trip({
    required UniqueId id,
    required String? driverId,
    required String pickLocation,
    required LatLong pickGeocode,
    required Info? driverInfo,
    required Coords? driverCoords,
    required String time,
    required String distance,
    required int statusCode,
  }) = _Trip;
}

class Info {
  String name;
  String photo;
  String phoneNumber;
  double rating;

  Info(
    this.name,
    this.phoneNumber,
    this.photo,
    this.rating,
  );
}
