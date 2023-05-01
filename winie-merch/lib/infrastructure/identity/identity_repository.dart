import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/domain/identity/identity_failure.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/infrastructure/core/firestore_helpers.dart';
import 'package:winie_merch/infrastructure/core/uploads.dart';
import 'package:winie_merch/infrastructure/dynamic_links/dynamic_links_repository.dart';
import 'package:winie_merch/infrastructure/navigation/location_repository.dart';
import 'package:winie_merch/injection.dart';

import 'identity_dto.dart';

@LazySingleton(as: IIdentityRepository)
class IdentityRepository implements IIdentityRepository {
  FirebaseFirestore _firestore;

  IdentityRepository(this._firestore);

  Geoflutterfire _geoflutterfire = Geoflutterfire();
  static String? userId;

  @override
  Stream<Either<IdentityFailure, Identity>> retrieve() async* {
    final userDoc = await _firestore.userDocument();
    userId = userDoc.id;
    try {
      yield* userDoc.snapshots().map(
        (snapshot) {
          if (snapshot.exists) {
            return right<IdentityFailure, Identity>(
                IdentityDTO.fromFirestore(snapshot).toDomain());
          } else {
            return left(IdentityFailure.unexpected());
          }
        },
      );
    } catch (e) {}
  }

  @override
  Future<Either<IdentityFailure, Identity>> getUser(String id) async {
    try {
      final userDoc =
          await (await _firestore.collection('users').doc(id)).get();

      if (userDoc.exists) {
        return right(IdentityDTO.fromFirestore(userDoc).toDomain());
      } else {
        return left(IdentityFailure.unexpected());
      }
    } catch (e) {
      return left(IdentityFailure.unexpected());
    }
  }

  @override
  Future<Either<IdentityFailure, Unit>> create(
      Map<String, dynamic> accountData) async {
    try {
      final userDoc = await _firestore.userDocument();
      accountData['userId'] = userDoc.id;
      accountData['storeId'] = Uuid().v4();

      var geoPointData = await findGeoPosition(accountData["address"]);
      await _firestore.collection('stores').doc(accountData['storeId']).set(
        {'geoPosition': geoPointData},
        SetOptions(merge: true),
      );
      accountData['dynamicLink'] = await generateStoreLink(
          accountData['storeId'], accountData['storeName']);

      String url =
          'https://us-central1-winie-merch.cloudfunctions.net/merchSignUp';
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(accountData),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const IdentityFailure.unexpected());
      }
    } catch (e) {
      return left(const IdentityFailure.unexpected());
    }
  }

  @override
  Future<Either<IdentityFailure, Unit>> updateIdentity(
      Map<String, dynamic> identityField) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.update(identityField);

      return right(unit);
    } on PlatformException catch (e) {
      return left(const IdentityFailure.unexpected());
    }
  }

  @override
  Future<Either<IdentityFailure, dynamic>> getField(String fieldName) async {
    try {
      final userData = await (await _firestore.userDocument()).get();
      if (userData.exists && userData[fieldName] != null) {
        return right(userData[fieldName]);
      } else {
        return left(IdentityFailure.unexpected());
      }
    } catch (e) {
      return left(IdentityFailure.unexpected());
    }
  }

  @override
  Future<void> suggestToUs(String suggestion) async {
    try {
      final userDoc = await _firestore.userDocument();

      await _firestore.collection('suggestions').doc().set({
        'user': userDoc.id,
        'suggestion': suggestion,
        'reportTime': DateTime.now().toIso8601String(),
        'device': Platform.isAndroid ? 'Android' : 'iOS',
        'app': 'winie_merch',
      });
    } catch (e) {}
  }

  @override
  Future<void> submitBugReport(
      String issue, String description, String filePath) async {
    try {
      final userDoc = await _firestore.userDocument();
      String imageURL = '';

      if (filePath.isNotEmpty) {
        var url = await getIt<Uploads>().uploadImage(filePath);
        imageURL = url;
      }

      await _firestore.collection('bugReports').doc().set({
        'user': userDoc.id,
        'issue': issue,
        'description': description,
        'screenshot': imageURL,
        'status': 'reported',
        'reportTime': DateTime.now().toIso8601String(),
        'device': Platform.isAndroid ? 'Android' : 'iOS',
        'app': 'winie_merch',
      });
    } catch (e) {}
  }

  Future<String> generateStoreLink(String storeId, String name) async {
    Map<String, dynamic> dynamicLinkParameter = {
      'id': storeId,
      'name': name,
      'desc': 'Winie Store',
      'imageURL': '',
    };

    final String updateDynamicLink =
        await DynamicLinksRepository.createDynamicLink(
      'store',
      dynamicLinkParameter,
    );

    return updateDynamicLink;
  }

  Future<dynamic> findGeoPosition(String storeAddress) async {
    LatLong geoCode = await LocationRepository.fetchGeocode(storeAddress);
    GeoFirePoint point = _geoflutterfire.point(
      latitude: geoCode.lat,
      longitude: geoCode.lng,
    );
    return point.data;
  }
}
