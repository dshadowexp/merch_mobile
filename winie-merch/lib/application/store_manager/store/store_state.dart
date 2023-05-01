part of 'store_bloc.dart';

enum StoreStatus { initial, loading, success, failure }

@freezed
class StoreState with _$StoreState {
  const factory StoreState({
    required StoreStatus status,
    required List<Store> stores,
    required Store? currentStore,
    required Map<String, Identity> partnerRequests,
    required Map<String, Identity> currentStorePartners,
    required bool isLoading,
  }) = _StoreState;

  factory StoreState.initial() => StoreState(
        status: StoreStatus.initial,
        stores: [],
        currentStore: null,
        partnerRequests: {},
        currentStorePartners: {},
        isLoading: false,
      );
}
