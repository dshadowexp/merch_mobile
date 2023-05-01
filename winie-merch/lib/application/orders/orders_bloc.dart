import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final IOrderRepository _iOrderRepository;

  OrdersBloc(this._iOrderRepository) : super(OrdersState.initial());

  StreamSubscription<Either<StoreManagerFailure, List<SaleOrder>>>?
      _ordersSubscription;

  @override
  Stream<OrdersState> mapEventToState(
    OrdersEvent event,
  ) async* {
    yield* event.map(
      watchOrdersStarted: (e) async* {
        _ordersSubscription?.cancel();
        _ordersSubscription = _iOrderRepository
            .getStoreOrders(e.storeId)
            .listen((ordersFailureOrSuccess) {
          add(
            OrdersEvent.ordersReceived(ordersFailureOrSuccess),
          );
        });
      },
      ordersReceived: (e) async* {
        yield const OrdersState.loadInProgress();

        yield e.ordersFailureOrSuccess.fold(
          (l) => OrdersState.loadFailure(l),
          (r) => OrdersState.loadOrders(r),
        );
      },
    );
  }
}
