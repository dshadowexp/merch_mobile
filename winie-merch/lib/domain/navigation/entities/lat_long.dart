import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_long.freezed.dart';

@freezed
abstract class LatLong implements _$LatLong {
  const LatLong._();

  const factory LatLong({
    required double lat,
    required double lng,
  }) = _LatLong;

  factory LatLong.empty() => LatLong(
        lat: 0.0,
        lng: 0.0,
      );
}

@freezed
abstract class Coords implements _$Coords {
  const Coords._();

  const factory Coords({
    required double lat,
    required double lng,
    required double bearing,
  }) = _Coords;
}
