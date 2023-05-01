import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/navigation/dispatch_failure.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/domain/navigation/i_trip_repository.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';

part 'trip_event.dart';
part 'trip_state.dart';

part 'trip_bloc.freezed.dart';

@injectable
class TripBloc extends Bloc<TripEvent, TripState> {
  final ITripRepository iTripRepository;

  TripBloc(this.iTripRepository) : super(TripState.initial());

  StreamSubscription<Either<StoreManagerFailure, SaleOrder>>?
      _orderSubscription;
  StreamSubscription<Either<DispatchFailure, Trip>>? tripSubscription;
  StreamSubscription<List<Coords>>? nearbySubscription;

  @override
  Stream<TripState> mapEventToState(
    TripEvent event,
  ) async* {
    yield* event.map(
      distributed: (e) async* {
        switch (e.order.status.toLowerCase()) {
          case 'ready':
            add(TripEvent.readied(e.position));
            break;
          case 'requesting':
            yield TripState.requesting('Looking for a rider...', true);
            break;
          case 'pickingup':
            add(TripEvent.tracking(e.order.id));
            break;
          default:
        }
      },
      readied: (e) async* {
        yield TripState.ready([]);

        nearbySubscription?.cancel();
        nearbySubscription = iTripRepository
            .nearbyDrivers(LatLong(
          lat: e.latlng.lat,
          lng: e.latlng.lng,
        ))
            .listen(
          (event) async* {
            add(TripEvent.nearbiesReceived(event));
          },
        );
      },
      nearbiesReceived: (e) async* {
        yield TripState.ready(e.nearbies);
      },
      requested: (e) async* {
        yield TripState.requesting('Looking for rider...', true);
        Map<String, dynamic> ans = await iTripRepository.findNearbyDriver(
          e.storeOrderId.getOrCrash(),
          e.address,
          e.latlng,
        );
        switch (ans['code']) {
          // Error scope
          case -1:
          // No drivers available
          case 0:
            yield TripState.requesting(ans['message'], false);
            break;
          // Driver already assigned
          case 2:
          // Driver found
          case 1:
            yield TripState.requesting(ans['message'], true);
            add(TripEvent.tracking(e.storeOrderId));
            break;
          default:
            break;
        }
      },
      tracking: (e) async* {
        tripSubscription?.cancel();
        tripSubscription = iTripRepository
            .trackTrip(e.storeOrderId.getOrCrash())
            .listen((positionFailureOrSuccess) {
          add(TripEvent.tripReceived(positionFailureOrSuccess));
        });
      },
      tripReceived: (e) async* {
        yield e.failureOrTrip.fold(
          (l) => TripState.requesting('Please wait', true),
          (r) {
            if ((r.statusCode == 0 || r.statusCode == 1) &&
                r.driverId != null) {
              return TripState.pickingUp(r);
            } else if (r.statusCode == -1) {
              return TripState.requesting('Please wait', true);
            } else {
              return TripState.initial();
            }
          },
        );
      },
    );
  }
}
