import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/store_manager/entities/product.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IStoreManagerRepository _iStoreManagerRepository;

  ProductBloc(this._iStoreManagerRepository) : super(ProductState.initial());

  StreamSubscription<Either<StoreManagerFailure, List<Product>>>?
      _productsStreamSubscription;

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield* event.map(
      watchProductsStarted: (e) async* {
        yield const ProductState.loadInProgress();

        await _productsStreamSubscription?.cancel();
        _productsStreamSubscription = _iStoreManagerRepository
            .watchStoreProducts(e.storeId)
            .listen((failureOrStores) {
          add(ProductEvent.productsReceived(failureOrStores));
        });
      },
      productsReceived: (e) async* {
        yield e.productsFailureOrSuccess.fold(
          (l) => ProductState.loadFailure(l),
          (r) => ProductState.loadSuccess(r),
        );
      },
    );
  }
}
