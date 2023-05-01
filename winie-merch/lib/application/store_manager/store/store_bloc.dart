import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_event.dart';
part 'store_state.dart';
part 'store_bloc.freezed.dart';

@injectable
class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final IStoreManagerRepository _iStoreManagerRepository;
  final IIdentityRepository _iIdentityRepository;

  StoreBloc(
    this._iStoreManagerRepository,
    this._iIdentityRepository,
  ) : super(StoreState.initial());

  StreamSubscription<Either<StoreManagerFailure, Store>>?
      _storeStreamSubscription;

  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    yield* event.map(
      loadStores: (e) async* {
        yield state.copyWith(
          isLoading: true,
          status: StoreStatus.loading,
        );
        List<Store> stores = await _iStoreManagerRepository.loadUserStores();
        if (stores.isNotEmpty) {
          add(StoreEvent.watchStoreStarted(stores.first.id.getOrCrash()));
          Map<String, Identity> tempMap = {};

          for (var partner in stores.first.partners) {
            (await _iIdentityRepository.getUser(partner)).fold(
              (l) => null,
              (r) {
                tempMap[partner] = r;
              },
            );
          }

          Map<String, Identity> tempRequests = {};
          if (stores.first.partnerRequests != null) {
            for (var request in stores.first.partnerRequests!) {
              (await _iIdentityRepository.getUser(request)).fold(
                (l) => null,
                (r) {
                  tempRequests[request] = r;
                },
              );
            }
          }

          yield state.copyWith(
            stores: stores,
            currentStorePartners: tempMap,
            partnerRequests: tempRequests,
          );
        }
      },
      changeCurrentStore: (e) async* {
        if (e.storeId == state.currentStore!.id.getOrCrash()) {
          return;
        }

        yield state.copyWith(
          isLoading: true,
          status: StoreStatus.loading,
        );

        var selectedStore = state.stores.firstWhere(
          (element) => element.id.getOrCrash() == e.storeId,
        );

        for (var partner in selectedStore.partners) {
          if (!state.currentStorePartners.containsKey(partner)) {
            (await _iIdentityRepository.getUser(partner)).fold(
              (l) => null,
              (r) {
                state.currentStorePartners[partner] = r;
              },
            );
          }
        }

        yield state.copyWith(
          isLoading: false,
          status: StoreStatus.success,
          currentStore: selectedStore,
          currentStorePartners: state.currentStorePartners,
        );
      },
      watchStoreStarted: (e) async* {
        yield state.copyWith(
          isLoading: true,
          status: StoreStatus.loading,
        );
        await _storeStreamSubscription?.cancel();

        _storeStreamSubscription = _iStoreManagerRepository
            .watchStore(e.storeId)
            .listen((failureOrStore) {
          add(StoreEvent.storeReceived(failureOrStore));
        });
      },
      storeReceived: (e) async* {
        yield e.failureOrStore.fold(
          (l) {
            return state.copyWith(
              isLoading: false,
              status: StoreStatus.failure,
            );
          },
          (r) {
            return state.copyWith(
              isLoading: false,
              status: StoreStatus.success,
              currentStore: r,
            );
          },
        );
      },
      acceptStorePartner: (e) async* {
        await _iStoreManagerRepository.acceptPartner(
          state.currentStore!.id.getOrCrash(),
          e.partnerId,
        );
        var acceptedPartner = state.partnerRequests.remove(e.partnerId);
        state.currentStorePartners[e.partnerId] = acceptedPartner!;
        yield state.copyWith(
          currentStorePartners: state.currentStorePartners,
          partnerRequests: state.partnerRequests,
        );
      },
      declineStorePartner: (e) async* {
        await _iStoreManagerRepository.declinePartner(
          state.currentStore!.id.getOrCrash(),
          e.partnerId,
        );
        state.partnerRequests.remove(e.partnerId);
        yield state.copyWith(
          partnerRequests: state.partnerRequests,
        );
      },
    );
  }
}
