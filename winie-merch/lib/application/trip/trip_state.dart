part of 'trip_bloc.dart';

@freezed
abstract class TripState with _$TripState {
  const factory TripState.initial() = _Initial;
  const factory TripState.ready(List<Coords> drivers) = _Ready;
  const factory TripState.requesting(String response, bool load) = _Requesting;
  const factory TripState.pickingUp(Trip trip) = _PickingUp;
}
