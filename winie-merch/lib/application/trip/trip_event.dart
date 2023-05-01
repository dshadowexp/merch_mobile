part of 'trip_bloc.dart';

@freezed
abstract class TripEvent with _$TripEvent {
  const factory TripEvent.distributed(SaleOrder order, LatLong position) =
      _Distributed;
  const factory TripEvent.readied(LatLong latlng) = _Readied;
  const factory TripEvent.nearbiesReceived(List<Coords> nearbies) =
      _NearbiesReceived;
  const factory TripEvent.requested(
      UniqueId storeOrderId, String address, LatLong latlng) = _Requested;
  const factory TripEvent.tripReceived(
      Either<DispatchFailure, Trip> failureOrTrip) = _TripReceived;
  const factory TripEvent.tracking(UniqueId storeOrderId) = _Tracking;
}
