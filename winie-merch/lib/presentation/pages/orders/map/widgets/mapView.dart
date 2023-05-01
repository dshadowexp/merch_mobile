import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animarker/flutter_map_marker_animation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/presentation/pages/orders/map/utils/iconUtils.dart';
import 'package:winie_merch/presentation/pages/orders/map/utils/mapUtils.dart';

import 'mapBottom.dart';

class MapView extends StatefulWidget {
  final Trip trip;
  final StreamController<Coords> locationStream;
  final StreamController<int> tripStateStream;

  const MapView({
    Key? key,
    required this.trip,
    required this.tripStateStream,
    required this.locationStream,
  }) : super(key: key);
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final polylinesNotifier = ValueNotifier<Set<Polyline>>({});
  Set<Marker> markers = {};
  PolylinePoints polylinePoints = PolylinePoints();
  String? _mapStyle;
  Completer<GoogleMapController> _googleMapController = Completer();
  GoogleMapController? mapController;
  BitmapDescriptor? dropOffLocationIcon;
  BitmapDescriptor? driverLocationIcon;
  StreamSubscription<Coords>? positionStreamSubscription;
  StreamSubscription<int>? tripStateSubscription;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => _startUp(context),
    );
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    tripStateSubscription?.cancel();
    positionStreamSubscription?.cancel();
    super.dispose();
  }

  _setCustomMapPin() async {
    dropOffLocationIcon = await IconUtils.createMarkerImageFromAsset(
        'assets/images/pickUpLocationMarker.png',
        width: 60);
    driverLocationIcon =
        await IconUtils.createMarkerImageFromAsset('assets/images/bike.png');
    _setMarker(
      'pickup',
      Coords(
        lat: widget.trip.pickGeocode.lat,
        lng: widget.trip.pickGeocode.lng,
        bearing: 0,
      ),
      dropOffLocationIcon!,
      info: InfoWindow(title: widget.trip.pickLocation),
    );
  }

  _startUp(BuildContext context) async {
    await _setCustomMapPin();
    positionStreamSubscription =
        widget.locationStream.stream.listen((updatePoint) async {
      if (this.mounted) {
        markers.clear();
        await updateStopPoints(updatePoint);
      }
    });
    tripStateSubscription = widget.tripStateStream.stream.listen((event) {
      if (event == 1) {
        if (this.mounted) {
          Navigator.pop(context);
        }
      }
    });
  }

  _setMarker(String id, Coords point, BitmapDescriptor icon,
      {InfoWindow? info}) {
    final MarkerId markerId = MarkerId(id);
    var marker = RippleMarker(
      markerId: markerId,
      position: LatLng(point.lat, point.lng),
      icon: icon,
      infoWindow: info ?? InfoWindow.noText,
      rotation: point.bearing,
      ripple: false,
      zIndex: 5,
    );

    setState(() {
      markers.add(marker);
    });
  }

  updateStopPoints(Coords driverPoint) async {
    _setMarker(
      'driver',
      driverPoint,
      driverLocationIcon!,
    );
    _setMarker(
      'pickUp',
      Coords(
        lat: widget.trip.pickGeocode.lat,
        lng: widget.trip.pickGeocode.lng,
        bearing: 0,
      ),
      dropOffLocationIcon!,
    );

    List<LatLng> polylineCoordinates = [];

    polylineCoordinates.addAll([
      LatLng(widget.trip.pickGeocode.lat, widget.trip.pickGeocode.lng),
      LatLng(driverPoint.lat, driverPoint.lng),
    ]);

    Polyline polyline = Polyline(
      polylineId: PolylineId(Uuid().v4()),
      color: Colors.teal.shade600,
      endCap: Cap.roundCap,
      startCap: Cap.roundCap,
      width: 3,
      points: polylineCoordinates,
    );

    var gmapcont = await this._googleMapController.future;
    MapUtils.setMapFitToPolyLine({polyline}, gmapcont);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: 1,
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 100),
            child: Animarker(
              curve: Curves.bounceIn,
              duration: Duration(milliseconds: 1500),
              mapId:
                  _googleMapController.future.then<int>((value) => value.mapId),
              markers: markers,
              child: GoogleMap(
                markers: Set<Marker>.of(markers),
                onMapCreated: (GoogleMapController controller) {
                  controller.setMapStyle(_mapStyle);
                  mapController = controller;
                  if (!_googleMapController.isCompleted) {
                    _googleMapController.complete(controller);
                  }
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    widget.trip.pickGeocode.lat,
                    widget.trip.pickGeocode.lng,
                  ),
                  zoom: 12,
                ),
                zoomControlsEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Text(
                  'Order ${widget.trip.id.getOrCrash().substring(0, 6)}',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: SafeArea(
          child: TrackBottom(
            trip: widget.trip,
          ),
        ),
      ),
    );
  }
}
