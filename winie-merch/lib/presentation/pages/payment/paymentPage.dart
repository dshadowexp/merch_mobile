import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:winie_merch/application/transaction/transaction_bloc.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/amountCard.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/networkOptions.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/paymentNumberField.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/slideToPay.dart';
import 'package:winie_merch/presentation/pages/widgets/dialog.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs.dart';

import 'widgets/checkoutBoxes.dart';

class PaymentPage extends StatefulWidget {
  final UniqueId orderId;
  final Function(String) callBack;
  final int purpose;
  final double subTotal;
  final double deliveryFee;

  const PaymentPage({
    Key? key,
    required this.orderId,
    required this.purpose,
    required this.callBack,
    required this.subTotal,
    required this.deliveryFee,
  }) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final loadingNotifier = ValueNotifier<bool>(false);
  final stageTextNotifier = ValueNotifier<int>(0);
  final timeNotifier = CountDownNotifier();
  TextEditingController network = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    number.addListener(() {
      if (number.text.length >= 9 || number.text.isEmpty) {
        setState(() {});
      }
    });

    network.addListener(() {
      if (network.text.isNotEmpty) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    timeNotifier.dispose();
    loadingNotifier.dispose();
    stageTextNotifier.dispose();
    network.dispose();
    number.dispose();
    super.dispose();
  }

  _payCheckOut() {
    Transaction empty = Transaction.empty();
    Transaction transaction = empty.copyWith(
      id: widget.orderId,
      purpose: widget.purpose,
      accountNumber: number.text,
      code: network.text,
      amount: (widget.deliveryFee + widget.subTotal).toString(),
    );
    context.read<TransactionBloc>()..add(TransactionEvent.charged(transaction));
    _loading(true);
    _stageChange(0);
  }

  _stageChange(int stage) {
    if (this.mounted) {
      stageTextNotifier.value = stage;
    }
  }

  _stageText(int stage) {
    switch (stage) {
      case 0:
        return 'Requesting';
      case 1:
        timeNotifier.startTimer();
        return 'Authorizing';
      case 2:
        return 'Success';
      default:
        return 'Payment';
    }
  }

  _loading(bool value) {
    if (this.mounted) {
      loadingNotifier.value = value;
    }
  }

  _success(BuildContext context, String? referenceId) async {
    FirebaseAnalytics().logEcommercePurchase();
    _loading(false);
    await showCompletedDialog(
      context,
      'Payment Successful',
    );

    if (referenceId != null) {
      await widget.callBack(referenceId);
    }

    Navigator.pop(context);
  }

  _failure(String failureMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(failureMessage),
      duration: Duration(seconds: 5),
    ));
    _loading(false);
  }

  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return BlocListener<TransactionBloc, TransactionState>(
      listener: (content, state) {
        state.map(
          initial: (_) {},
          transactionLoading: (_) {
            loadingNotifier.value = true;
          },
          transactionSuccess: (successState) async {
            _stageChange(2);
            await _success(context, successState.referenceId);
          },
          transactionProcessing: (successState) async {
            var r = successState.payload;

            if (r['status'] == 'send_otp') {
              TextEditingController otp = TextEditingController();

              vodaBox(
                context,
                <Widget>[
                  Text(
                    'Please wait for OTP code\n${r['display_text']}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 15,
                    ),
                  ),
                  TextField(
                    controller: otp,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ],
                (answer) async {
                  if (answer) {
                    if (otp.text.isNotEmpty) {
                      context.read<TransactionBloc>()
                        ..add(
                          TransactionEvent.submittedOTP(
                            r['reference'],
                            otp.text,
                          ),
                        );
                    }
                  } else {
                    _loading(false);
                  }
                  Navigator.pop(context);
                },
              );
            } else if (r['status'] == 'pay_offline') {
              vodaBox(
                context,
                <Widget>[
                  Text(
                    "Please wait for pop up\nComplete authorization process\nClick ✔ to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 15,
                    ),
                  ),
                ],
                (answer) async {
                  if (answer) {
                    _stageChange(1);
                    context.read<TransactionBloc>()
                      ..add(
                        TransactionEvent.statusListened(
                          r['reference'],
                        ),
                      );
                    Navigator.pop(context);
                  } else {
                    Navigator.pop(context);
                    _loading(false);
                  }
                },
              );
            } else if (r['status'] == 'failed') {
              _loading(false);
              _failure(r['message']);
            }
          },
          transactionFailure: (l) async {
            String errorMessage = "";
            l.transactionFailure.map(
              delayed: (_) {
                errorMessage = 'Payment timeout';
              },
              errorMessage: (failure) {
                errorMessage = failure.message;
              },
              serverError: (_) {
                errorMessage = 'Payment failed to complete, please try again';
              },
            );
            _failure(errorMessage);
          },
        );
      },
      child: WillPopScope(
        onWillPop: () async {
          return !loadingNotifier.value;
        },
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            key: _scaffoldkey,
            appBar: AppBar(
              title: Text(
                'Complete Payment',
              ),
              actions: [
                ValueListenableBuilder(
                  valueListenable: loadingNotifier,
                  builder: (_, value, __) => AnimatedSwitcher(
                    switchInCurve: Curves.easeInCirc,
                    switchOutCurve: Curves.easeOutCirc,
                    duration: Duration(milliseconds: 150),
                    child: !(value as bool)
                        ? IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.block,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              question(
                                context,
                                'Payment',
                                "Are you sure you want to cancel payment?",
                                (answer) {
                                  if (answer) {
                                    context
                                        .read<TransactionBloc>()
                                        .add(TransactionEvent.statusStopped());
                                    _loading(false);
                                  }
                                },
                              );
                            },
                          ),
                  ),
                ),
              ],
              leading: Container(),
              elevation: 0.5,
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 35,
                    ),
                    child: Text(
                      'Please ensure you have enough cash in your account to complete this transaction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: loadingNotifier,
                  builder: (_, value, __) => Column(
                    children: [
                      PaymentNumberField(
                        numberController: number,
                        enabled: !(value as bool),
                      ),
                      NetworkOptions(
                        accountNumberController: number,
                        network: network,
                        enabled: !value,
                      ),
                    ],
                  ),
                ),
                AmountCard(
                  amount: widget.subTotal + widget.deliveryFee,
                ),
                Spacer(),
                ValueListenableBuilder(
                  valueListenable: loadingNotifier,
                  builder: (_, value, __) => value as bool
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ValueListenableBuilder(
                              valueListenable: stageTextNotifier,
                              builder: (_, stage, __) => Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    _stageText(stage as int).toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  if (stage == 1) ...[
                                    AnimatedBuilder(
                                      animation: timeNotifier,
                                      builder: (_, __) => Text(
                                        timeNotifier.timeString,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.teal,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8,
                                bottom: bottomPadding + 8.0,
                              ),
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.transparent,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.teal),
                              ),
                            ),
                          ],
                        )
                      : number.text.isNotEmpty &&
                              number.text.length >= 9 &&
                              network.text.isNotEmpty
                          ? SlidePay(process: _payCheckOut)
                          : Container(
                              height: 10,
                            ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CountDownNotifier extends ChangeNotifier {
  String timeString = ":180";
  Timer? timer;

  int _seconds = 180;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _seconds = 179;
    timer?.cancel();

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds < 1) {
        timer.cancel();
      } else {
        _seconds -= 1;
      }
      timeString = ": ${_seconds.toString()}";
      notifyListeners();
    });
  }
}
