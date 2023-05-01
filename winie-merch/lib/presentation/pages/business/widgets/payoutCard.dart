import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/transactions/i_transaction_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class PayoutCard extends StatefulWidget {
  final Store store;

  const PayoutCard({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  _PayoutCardState createState() => _PayoutCardState();
}

class _PayoutCardState extends State<PayoutCard> {
  ITransactionRepository transactionRepository =
      getIt<ITransactionRepository>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Current Balance",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Gh ${widget.store.currentbalance.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      !widget.store.payoutRequested &&
                              widget.store.currentbalance > 0.0
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  onPressed: !widget.store.payoutRequested &&
                          widget.store.currentbalance > 0.0
                      ? () async {
                          await AutoRouter.of(context)
                              .navigate(WithdrawalRoute(store: widget.store));
                        }
                      : null,
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: widget.store.payoutRequested
                            ? Colors.black
                            : Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.store.payoutRequested ? "Cashing" : "Cash out",
                        style: TextStyle(
                          color: !widget.store.payoutRequested &&
                                  widget.store.currentbalance > 0.0
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
