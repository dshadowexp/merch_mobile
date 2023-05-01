part of 'store_bloc.dart';

@freezed
abstract class StoreEvent with _$StoreEvent {
  const factory StoreEvent.loadStores() = _LoadStores;
  const factory StoreEvent.watchStoreStarted(String storeId) =
      _WatchStoresStarted;
  const factory StoreEvent.changeCurrentStore(String storeId) =
      _ChangeCurrentStore;
  const factory StoreEvent.acceptStorePartner(String partnerId) =
      _AcceptStorePartner;
  const factory StoreEvent.declineStorePartner(String partnerId) =
      _DeclineStorePartner;
  const factory StoreEvent.storeReceived(
      Either<StoreManagerFailure, Store> failureOrStore) = _StoresRecieved;
}
