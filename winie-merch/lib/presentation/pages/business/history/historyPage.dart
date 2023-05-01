import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart';
import 'package:winie_merch/domain/transactions/i_transaction_repository.dart';
import 'package:winie_merch/presentation/pages/business/history/widgets/historyTile.dart';
import 'package:winie_merch/presentation/pages/widgets/emptySection.dart';

import '../../../../injection.dart';

class TransactionHistoryPage extends StatefulWidget {
  final String storeId;

  const TransactionHistoryPage({
    Key? key,
    required this.storeId,
  }) : super(key: key);

  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  final orderRepo = getIt<ITransactionRepository>();
  late Future<List<TransactionHistory>> transactionsHistory;

  @override
  void initState() {
    transactionsHistory = orderRepo.loadHistory(widget.storeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          "Transactions",
          style: GoogleFonts.mulish().copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: transactionsHistory,
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          Widget animatedWidget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            animatedWidget = Center(
              child: JumpingDotsProgressIndicator(
                fontSize: 40.0,
                color: Colors.blue,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if ((snapshot.data as List<TransactionHistory>).isEmpty) {
              animatedWidget = EmptySection(
                icon: FeatherIcons.activity,
                text: 'No transactions available',
              );
            } else {
              List<TransactionHistory> data =
                  (snapshot.data as List<TransactionHistory>);

              animatedWidget = SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    for (var i = 0; i < data.length; i++) ...[
                      HistoryTile(
                        data: data[i],
                        index: i,
                        last: data.length,
                      ),
                    ],
                  ],
                ),
              );
            }
          } else {
            animatedWidget = EmptySection(
              icon: FeatherIcons.activity,
              text: 'Something went wrong',
            );
          }
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 150),
            child: animatedWidget,
          );
        },
      ),
    );
  }
}
