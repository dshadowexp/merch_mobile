import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/navigation/dispatch_failure.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';

import 'entities/trip.dart';

abstract class ITripRepository {
  Stream<Either<DispatchFailure, Trip>> trackTrip(String tripId);
  Stream<List<Coords>> nearbyDrivers(LatLong latlong);
  Future<Map<String, dynamic>> findNearbyDriver(
      String tripId, String address, LatLong position);
}
