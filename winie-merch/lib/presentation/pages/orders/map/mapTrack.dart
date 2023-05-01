import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:winie_merch/application/trip/trip_bloc.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class MapTrack extends StatefulWidget {
  final SaleOrder order;

  const MapTrack({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  _MapTrackState createState() => _MapTrackState();
}

class _MapTrackState extends State<MapTrack> {
  StreamController<Coords> driverController = BehaviorSubject<Coords>();
  StreamController<int> tripStateController = BehaviorSubject<int>();

  @override
  void initState() {
    context.read<TripBloc>().add(
          TripEvent.tracking(
            widget.order.id,
          ),
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripBloc, TripState>(
      builder: (context, state) {
        return state.maybeMap(
          pickingUp: (trip) {
            if (trip.trip.driverCoords != null) {
              driverController.add(trip.trip.driverCoords!);
              if (trip.trip.statusCode == 1) {
                tripStateController.add(trip.trip.statusCode);
              }
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ViewMap(
                  trip: trip.trip,
                  tripStateController: tripStateController,
                  driverController: driverController,
                ),
                if (trip.trip.statusCode == 0) ...[
                  SizedBox(
                    width: 10,
                  ),
                  CallCode(
                    tripId: widget.order.orderId.getOrCrash(),
                    driverNumber: trip.trip.driverInfo != null
                        ? trip.trip.driverInfo!.phoneNumber
                        : '',
                  ),
                ],
              ],
            );
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}

class CallCode extends StatelessWidget {
  final String tripId;
  final String driverNumber;

  const CallCode({
    Key? key,
    required this.tripId,
    required this.driverNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: RichText(
            text: TextSpan(
              text: 'Code: ',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: tripId.substring(0, 6).toUpperCase(),
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            FirebaseAnalytics().logEvent(
              name: 'custo_call_driver',
              parameters: {
                'orderId': tripId,
              },
            );

            final url = "tel:${driverNumber}";
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Call rider',
              style: TextStyle(
                color: Colors.teal,
                letterSpacing: 1,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ViewMap extends StatelessWidget {
  final StreamController<int> tripStateController;
  final StreamController<Coords> driverController;
  final Trip trip;

  const ViewMap({
    Key? key,
    required this.trip,
    required this.tripStateController,
    required this.driverController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.black,
            highlightColor: Colors.grey.shade100,
            child: Text(
              trip.time.isEmpty ? 'On route' : "${trip.time} away",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            FirebaseAnalytics().logEvent(
              name: 'map_view',
              parameters: {
                'orderId': trip.id.getOrCrash(),
              },
            );

            AutoRouter.of(context).push(MapView(
              trip: trip,
              tripStateStream: tripStateController,
              locationStream: driverController,
            ));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.teal,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'View on map',
              style: TextStyle(
                color: Colors.teal,
                letterSpacing: 1,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
