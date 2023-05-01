import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart';
import 'package:winie_merch/domain/transactions/i_transaction_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:winie_merch/domain/transactions/transaction_failure.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final ITransactionRepository _iTransactionRepository;

  TransactionBloc(this._iTransactionRepository)
      : super(TransactionState.initial());

  StreamSubscription<Either<TransactionFailure, Map<String, String>>>?
      _transactionStreamSubscription;

  @override
  Stream<TransactionState> mapEventToState(
    TransactionEvent event,
  ) async* {
    yield* event.map(
      charged: (e) async* {
        yield TransactionState.transactionLoading();

        Either<TransactionFailure, dynamic> failureOrCharged =
            await _iTransactionRepository.charge(e.payment);
        yield failureOrCharged.fold(
          (l) => TransactionState.transactionFailure(l),
          (r) => TransactionState.transactionProcessing(r),
        );
      },
      submittedOTP: (e) async* {
        yield TransactionState.transactionLoading();

        Either<TransactionFailure, dynamic> failureOrSubmitted =
            await _iTransactionRepository.submitOTP(e.reference, e.otp);

        yield failureOrSubmitted.fold(
          (l) => TransactionState.transactionFailure(l),
          (r) =>
              TransactionState.transactionProcessing({'status': 'pay_offline'}),
        );
      },
      statusListened: (e) async* {
        yield TransactionState.transactionLoading();

        _transactionStreamSubscription?.cancel();

        Timer.periodic(Duration(seconds: 90), (timer) async {
          await _iTransactionRepository.verify(e.referenceId);
          timer.cancel();
        });

        _transactionStreamSubscription =
            _iTransactionRepository.listenPayment(e.referenceId).listen(
          (event) {
            Map<String, String> payload = event.getOrElse(() => {});

            if (payload['status'] != 'send_otp' &&
                payload['status'] != 'pay_offline') {
              add(TransactionEvent.statusReceived(payload));
            }
          },
        );
      },
      statusReceived: (e) async* {
        TransactionState stateToYield = state;

        _transactionStreamSubscription?.cancel();

        switch (e.payload['status']) {
          case 'success':
            stateToYield =
                TransactionState.transactionSuccess(e.payload['referenceId']!);
            break;
          default:
            stateToYield = TransactionState.transactionFailure(
                TransactionFailure.delayed());
            break;
        }
        yield stateToYield;
      },
      statusStopped: (e) async* {
        _transactionStreamSubscription?.cancel();
      },
    );
  }
}
