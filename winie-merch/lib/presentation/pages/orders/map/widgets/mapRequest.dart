import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animarker/flutter_map_marker_animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:winie_merch/application/trip/trip_bloc.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/domain/navigation/i_trip_repository.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/infrastructure/navigation/location_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/orders/map/utils/iconUtils.dart';
import 'package:winie_merch/presentation/pages/orders/map/utils/mapUtils.dart';

import 'mapBottom.dart';

class MapRequest extends StatefulWidget {
  final SaleOrder order;

  const MapRequest({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  _MapRequestState createState() => _MapRequestState();
}

class _MapRequestState extends State<MapRequest> {
  final tripRepo = getIt<ITripRepository>();
  Set<Polyline> polylines = {};
  Completer<GoogleMapController> _googleMapController = Completer();
  final loadNotifier = ValueNotifier<bool>(false);
  final findingNotifier = ValueNotifier<bool>(false);
  LatLng? centerPosition;
  final addressController = TextEditingController();

  Set<Marker> markers = {};
  StreamSubscription? streamSubscription;
  late BitmapDescriptor dropOffLocationIcon;
  late BitmapDescriptor pickUpLocationIcon;
  late BitmapDescriptor driverLocationIcon;
  String? _mapStyle;

  @override
  void initState() {
    centerPosition = LatLng(5.62064, -0.19378);
    addressController.addListener(() async {
      await setStopPoints();
    });
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => _startUp(context),
    );
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    super.dispose();
  }

  _startUp(BuildContext context) async {
    await _setCustomMapPin();
    LatLong position =
        await LocationRepository.fetchGeocode(widget.order.pickLocation);
    centerPosition = LatLng(position.lat, position.lng);
    context.read<TripBloc>().add(TripEvent.distributed(
          widget.order,
          position,
        ));
  }

  _requestDriver() async {
    context.read<TripBloc>().add(TripEvent.requested(
          widget.order.id,
          addressController.text,
          LatLong(
            lat: centerPosition!.latitude,
            lng: centerPosition!.longitude,
          ),
        ));
  }

  void _load(bool value) {
    if (this.mounted) {
      loadNotifier.value = value;
    }
  }

  void setMapStyle() {
    rootBundle.loadString('assets/map/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  _setCustomMapPin() async {
    dropOffLocationIcon = await IconUtils.createMarkerImageFromAsset(
        'assets/images/pickUpLocationMarker.png');
    pickUpLocationIcon = await IconUtils.createMarkerImageFromAsset(
        'assets/images/pickUpLocationMarker.png');
    driverLocationIcon = await IconUtils.createMarkerImageFromAsset(
        'assets/images/bike.png',
        width: 70);
  }

  _setMarker(String id, Coords point, BitmapDescriptor icon) {
    final MarkerId markerId = MarkerId(id);
    var marker = RippleMarker(
      markerId: markerId,
      position: LatLng(point.lat, point.lng),
      icon: icon,
      rotation: point.bearing,
      ripple: false,
    );

    setState(() {
      markers.add(marker);
    });
  }

  setPointMarker(String id, LatLong point, String info, double color) {
    final MarkerId markerId = MarkerId(id);
    var marker = Marker(
      markerId: markerId,
      position: LatLng(point.lat, point.lng),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        color,
      ),
      infoWindow: InfoWindow(title: info),
    );
    setState(() {
      markers.add(marker);
    });
  }

  void _onMapCreated(GoogleMapController controller) async {
    controller.setMapStyle(_mapStyle);
    if (!_googleMapController.isCompleted) {
      _googleMapController.complete(controller);
    }
  }

  void _onCameraIdle() async {}

  void _onCameraMoveStarted() async {}

  void _onCameraMove(CameraPosition position) async {}

  setStopPoints() async {
    _load(true);
    setState(() {
      markers.clear();
      markers = {};
    });
    final startGeo =
        await LocationRepository.fetchGeocode(addressController.text);
    final destGeo =
        await LocationRepository.fetchGeocode(widget.order.dropLocation);
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      LocationRepository.apiKey,
      PointLatLng(startGeo.lat, startGeo.lng),
      PointLatLng(destGeo.lat, destGeo.lng),
    );

    List<LatLng> polylineCoordinates =
        result.points.map((e) => LatLng(e.latitude, e.longitude)).toList();

    Polyline polyline = Polyline(
      polylineId: PolylineId(Uuid().v4()),
      color: Colors.indigo,
      endCap: Cap.roundCap,
      startCap: Cap.roundCap,
      width: 3,
      points: polylineCoordinates,
    );

    setPointMarker(
      'pick',
      startGeo,
      addressController.text,
      BitmapDescriptor.hueCyan,
    );

    setPointMarker(
      'drop',
      destGeo,
      widget.order.dropLocation,
      BitmapDescriptor.hueViolet,
    );

    setState(() {
      polylines.clear();
      polylines.add(polyline);
    });

    var gmapcont = await this._googleMapController.future;
    MapUtils.setMapFitToPolyLine({polyline}, gmapcont);
    _load(false);
    setState(() {
      centerPosition = LatLng(startGeo.lat, startGeo.lng);
    });
  }

  updateStopPoints(Coords? driverPoint, Trip trip) async {
    if (driverPoint != null) {
      _setMarker(
        'driver',
        driverPoint,
        driverLocationIcon,
      );
      _setMarker(
        'pickUp',
        Coords(
          lat: trip.pickGeocode.lat,
          lng: trip.pickGeocode.lng,
          bearing: 0,
        ),
        dropOffLocationIcon,
      );

      List<LatLng> polylineCoordinates = [];

      polylineCoordinates.addAll([
        LatLng(trip.pickGeocode.lat, trip.pickGeocode.lng),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: centerPosition != null ? 1 : 0,
            child: Animarker(
              curve: Curves.ease,
              mapId:
                  _googleMapController.future.then<int>((value) => value.mapId),
              markers: markers,
              child: GoogleMap(
                markers: markers,
                polylines: polylines,
                onMapCreated: _onMapCreated,
                onCameraIdle: _onCameraIdle,
                onCameraMove: _onCameraMove,
                onCameraMoveStarted: _onCameraMoveStarted,
                initialCameraPosition: CameraPosition(
                  target: centerPosition!,
                  zoom: 13,
                ),
                zoomControlsEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Text(
                  'Order ${widget.order.id.getOrCrash().substring(0, 6)}',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
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
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: SafeArea(
          child: BlocConsumer<TripBloc, TripState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return LoadingBottom(
                    message: 'loading',
                    load: true,
                    show: false,
                    tryAgain: () {
                      context.read<TripBloc>().add(TripEvent.distributed(
                            widget.order,
                            LatLong(
                              lat: centerPosition!.latitude,
                              lng: centerPosition!.longitude,
                            ),
                          ));
                    },
                  );
                },
                ready: (response) {
                  return RequestBottom(
                    addressController: addressController,
                    loadNotifier: loadNotifier,
                    dropOffLocation: widget.order.dropLocation,
                    request: _requestDriver,
                  );
                },
                requesting: (response) {
                  return LoadingBottom(
                    message: response.response,
                    load: response.load,
                    show: true,
                    tryAgain: () {
                      context.read<TripBloc>().add(
                            TripEvent.distributed(
                              widget.order,
                              LatLong(
                                lat: centerPosition!.latitude,
                                lng: centerPosition!.longitude,
                              ),
                            ),
                          );
                    },
                  );
                },
                pickingUp: (response) {
                  return TrackBottom(
                    trip: response.trip,
                  );
                },
              );
            },
            listener: (context, state) {
              state.map(
                initial: (_) {},
                ready: (response) async {
                  addressController.text = widget.order.pickLocation;
                },
                requesting: (response) {},
                pickingUp: (response) async {
                  await updateStopPoints(
                    response.trip.driverCoords,
                    response.trip,
                  );
                  if (response.trip.statusCode == 1) {
                    Navigator.pop(context);
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
