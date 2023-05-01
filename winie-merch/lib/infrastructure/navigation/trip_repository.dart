import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/navigation/dispatch_failure.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/domain/navigation/i_trip_repository.dart';
import 'package:winie_merch/infrastructure/navigation/navigation_dtos.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

@LazySingleton(as: ITripRepository)
class TripRepository implements ITripRepository {
  FirebaseFirestore _firestore;

  TripRepository(this._firestore);

  final geo = Geoflutterfire();

  @override
  Stream<Either<DispatchFailure, Trip>> trackTrip(String tripId) async* {
    final driversOnlineDoc = _firestore.collection('trips').doc(tripId);

    yield* driversOnlineDoc.snapshots().map((snapshot) {
      if (!snapshot.exists) {
        return left(DispatchFailure.unexpected());
      }

      if (snapshot.data()!.containsKey('id')) {
        return right(TripDTO.fromFirestore(snapshot).toDomain());
      } else {
        return left(DispatchFailure.unexpected());
      }
    });
  }

  @override
  Future<Map<String, dynamic>> findNearbyDriver(
      String tripId, String address, LatLong position) async {
    try {
      String url =
          'https://us-central1-winie-merch.cloudfunctions.net/requestDriver?storeOrderId=${tripId}&geocode=${position.lat},${position.lng}&address=${address}';
      final response = await http.get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
      );

      Map<String, dynamic> result = json.decode(response.body);

      if (response.statusCode == 200) {
        return result;
      } else {
        return result;
      }
    } catch (e) {
      return {};
    }
  }

  @override
  Stream<List<Coords>> nearbyDrivers(LatLong latlong) async* {
    try {
      double radius = 500;
      GeoFirePoint center = geo.point(
        latitude: latlong.lat,
        longitude: latlong.lng,
      );

      var driverReference = _firestore.collection('driversOnline');
      //.where('isAccepting', isEqualTo: true);

      yield* geo
          .collection(collectionRef: driverReference)
          .within(center: center, radius: radius, field: 'position')
          .map(
            (snaps) => snaps
                .map(
                  (doc) => CoordsDTO.fromFirestore(doc).toDomain(),
                )
                .toList(),
          );
    } catch (e) {}
  }
}
