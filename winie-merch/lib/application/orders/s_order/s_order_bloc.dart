import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';
import 'package:winie_merch/domain/store_manager/store_manager_failure.dart';

part 's_order_event.dart';
part 's_order_state.dart';

part 's_order_bloc.freezed.dart';

@injectable
class SOrderBloc extends Bloc<SOrderEvent, SOrderState> {
  final IOrderRepository _iOrderRepository;

  SOrderBloc(this._iOrderRepository) : super(SOrderState.initial());

  StreamSubscription<Either<StoreManagerFailure, SaleOrder>>?
      _orderSubscription;

  @override
  Stream<SOrderState> mapEventToState(
    SOrderEvent event,
  ) async* {
    yield* event.map(
      watchOrder: (e) async* {
        _orderSubscription?.cancel();
        _orderSubscription = _iOrderRepository
            .listenOrder(e.orderId)
            .listen((ordersFailureOrSuccess) {
          add(
            SOrderEvent.orderReceived(ordersFailureOrSuccess),
          );
        });
      },
      orderReceived: (e) async* {
        yield SOrderState.loadInProgress();

        yield e.ordersFailureOrSuccess.fold(
          (l) => SOrderState.loadFailure(l),
          (r) => SOrderState.loadSuccess(r),
        );
      },
    );
  }
}
