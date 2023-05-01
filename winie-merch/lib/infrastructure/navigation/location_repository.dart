import 'dart:convert';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';

import 'navigation_dtos.dart';

class LocationRepository {
  static final _client = Client();

  static final String _androidKey = 'AIzaSyD_QB0Hb7ymJfvYmqjtbjT9cKMxu_3NvXs';
  static final String _iosKey = 'AIzaSyC4iCme-dBbATY2v_xxG_h6EbIZO28vF30';
  static final apiKey = Platform.isAndroid ? _androidKey : _iosKey;
  static final LocationAccuracy _locationAccuracy = LocationAccuracy.high;

  static Future<String> fetchAddressFromGeocode(LatLong ltlg) async {
    try {
      final request =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=${ltlg.lat},${ltlg.lng}&key=$apiKey&language=en";
      final response = await _client.get(
        Uri.parse(request),
      );

      if (response.statusCode == 200) {
        final result = json.decode(response.body);

        if (result['status'] == 'OK') {
          return result['results'][0]["formatted_address"];
        }
        return '';
      } else {
        return '';
      }
    } catch (e) {
      return '';
    }
  }

  static Future<LatLong> fetchGeocode(String address) async {
    final request =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=$apiKey';
    final response = await _client.get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);

      if (result['status'] == 'OK') {
        final location = result['results'][0]['geometry']['location'];
        return LatLong(
          lat: location['lat'],
          lng: location['lng'],
        );
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return LatLong.empty();
      }
      return LatLong.empty();
    } else {
      return LatLong.empty();
    }
  }

  static Future<List<Suggestion>> fetchAddressSuggestions(
      String sessionToken, String input) async {
    try {
      final request =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=geocode|establishment&language=en&components=country:gh&key=$apiKey&sessiontoken=$sessionToken';
      final response = await _client.get(Uri.parse(request));

      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        if (result['status'] == 'OK') {
          return result['predictions'].map<Suggestion>((p) {
            var value = p['terms'];

            return Suggestion(
              p['place_id'],
              p['description'],
              value[value.length - 2]['value'],
            );
          }).toList();
        }
        if (result['status'] == 'ZERO_RESULTS') {
          return [];
        }
        return [];
      } else {
        return [];
      }
    } on Exception catch (e) {
      return [];
    }
  }

  /// Request for user location access with the permission handlge
  /// plugin [PermissionHandler]
  ///
  /// if request granted, return true else false
  static Future<bool> requestLocationPermission() async {
    try {
      PermissionStatus status = await Permission.locationAlways.request();
      return status == PermissionStatus.granted;
    } catch (e) {
      return false;
    }
  }

  /// Returns the current position of the user
  /// taking the supplied [desiredAccuracy] in account
  static Future<Position?> retrieveCurrentLocation() async {
    try {
      Position? _position = await Geolocator.getCurrentPosition(
          desiredAccuracy: _locationAccuracy);

      return _position;
    } catch (e) {}
  }
}
