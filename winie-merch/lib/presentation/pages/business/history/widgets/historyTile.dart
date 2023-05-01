import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart';
import 'package:winie_merch/infrastructure/internal_data/time_manage.dart';
import 'package:winie_merch/presentation/pages/business/history/widgets/transactionCard.dart';

class HistoryTile extends StatefulWidget {
  final int index;
  final int last;
  final TransactionHistory data;

  const HistoryTile({
    Key? key,
    required this.data,
    required this.index,
    required this.last,
  }) : super(key: key);

  @override
  _HistoryTileState createState() => _HistoryTileState();
}

class _HistoryTileState extends State<HistoryTile> {
  _endChild() {
    switch (widget.data.type) {
      case 0:
        return DebitTransactionCard(transaction: widget.data);

      case 1:
        return CreditTransactionCard(transaction: widget.data);
      default:
        return Container();
    }
  }

  _indicate({
    required Color backgroundColor,
    required Color iconColor,
    required IconData icon,
  }) {
    return IndicatorStyle(
      height: 30,
      width: 30,
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      indicator: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
      ),
    );
  }

  IndicatorStyle _indicator() {
    switch (widget.data.type) {
      //account cash debited
      case 0:
        return _indicate(
          backgroundColor: Colors.green,
          iconColor: Colors.white,
          icon: Icons.remove,
        );

      //account cash credited
      case 1:
        return _indicate(
          backgroundColor: Colors.blue,
          iconColor: Colors.white,
          icon: Icons.add,
        );
      default:
        return IndicatorStyle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.23,
        isFirst: widget.index == 0,
        isLast: widget.index + 1 == widget.last,
        afterLineStyle: LineStyle(color: Colors.blue, thickness: 3),
        beforeLineStyle: LineStyle(color: Colors.blue, thickness: 3),
        indicatorStyle: _indicator(),
        startChild: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                timeTextOnly(
                  DateTime.parse(widget.data.createdAt),
                ),
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
              Text(
                dayText(
                  DateTime.parse(widget.data.createdAt),
                ),
                style: TextStyle(
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        endChild: Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: _endChild(),
        ),
      ),
    );
  }
}
