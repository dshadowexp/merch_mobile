import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/transactions/i_transaction_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/authButton.dart';
import 'package:winie_merch/presentation/pages/withdrawal/widgets/accountNumber.dart';
import 'package:winie_merch/presentation/pages/withdrawal/widgets/utils.dart';
import 'package:winie_merch/presentation/pages/withdrawal/widgets/withdrawAmount.dart';

import 'widgets/accountNetwork.dart';

class WithdrawalPage extends StatefulWidget {
  final Store store;

  const WithdrawalPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  _WithdrawalPageState createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
  final transactionRepository = getIt<ITransactionRepository>();
  final loadingNotifier = ValueNotifier<bool>(false);
  final amountNotifier = ValueNotifier<String>('');
  final remainderNotifier = ValueNotifier<String>('');
  final responseNotifier = ValueNotifier<String>('');

  @override
  void initState() {
    amountNotifier.value = widget.store.currentbalance.toStringAsFixed(2);
    remainderNotifier.value = widget.store.currentbalance.toStringAsFixed(2);
    super.initState();
  }

  @override
  void dispose() {
    remainderNotifier.dispose();
    responseNotifier.dispose();
    loadingNotifier.dispose();
    amountNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !loadingNotifier.value;
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            title: ValueListenableBuilder(
              valueListenable: remainderNotifier,
              builder: (_, remain, __) => Text(
                'Cashout (GH₵ ${remain})',
                style: GoogleFonts.mulish().copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: ValueListenableBuilder(
              valueListenable: loadingNotifier,
              builder: (_, value, __) => AnimatedSwitcher(
                switchInCurve: Curves.easeInCirc,
                switchOutCurve: Curves.easeOutCirc,
                duration: Duration(milliseconds: 150),
                child: !(value as bool)
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    : Container(),
              ),
            ),
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
                    'Withdrawal minimum is GH₵ 10.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              AccountNumber(
                number: widget.store.merchmomoaccount,
              ),
              AccountNetwork(
                network: widget.store.network,
              ),
              ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, loading, __) => WithdrawAmount(
                  enabled: loading as bool,
                  amountNotifier: amountNotifier,
                  loadingNotifier: loadingNotifier,
                ),
              ),
              Spacer(),
              ValueListenableBuilder(
                valueListenable: responseNotifier,
                builder: (_, response, __) => (response as String).isEmpty
                    ? Container()
                    : Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                        ),
                        child: Center(
                          child: Text(
                            response,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
              ),
              ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, loading, __) => ValueListenableBuilder(
                  valueListenable: amountNotifier,
                  builder: (_, amount, __) => AvoidKeyboard(
                    child: AuthButton(
                      buttonText: 'Withdraw',
                      isActive:
                          isNumeric(amount as String) && !(loading as bool),
                      isLoading: loading as bool,
                      onPressedFunc: () async {
                        loadingNotifier.value = true;
                        responseNotifier.value = '';
                        final payoutRes = await transactionRepository.transfer(
                            widget.store.id.getOrCrash(), amount);
                        payoutRes.fold(
                          (l) {
                            responseNotifier.value = 'Failed';
                          },
                          (r) {
                            responseNotifier.value = r;
                            double remain =
                                double.parse(remainderNotifier.value) -
                                    double.parse(amount);
                            remainderNotifier.value = remain.toStringAsFixed(2);
                            amountNotifier.value = remain.toStringAsFixed(2);
                          },
                        );

                        loadingNotifier.value = false;
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
