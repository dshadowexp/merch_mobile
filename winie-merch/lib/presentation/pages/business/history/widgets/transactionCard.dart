import 'package:flutter/material.dart';
import 'package:winie_merch/domain/transactions/entities/transaction.dart';

class DebitTransactionCard extends StatelessWidget {
  final TransactionHistory transaction;

  const DebitTransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "You have been ${transaction.description} with",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 7),
              DataTextDisplay(
                label: "Amount",
                data: 'Gh ' + transaction.amount.toString(),
              ),
              SizedBox(height: 5),
              DataTextDisplay(
                label: "Account Number",
                data: transaction.actionId,
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}

class CreditTransactionCard extends StatelessWidget {
  final TransactionHistory transaction;

  const CreditTransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "You have been ${transaction.description} with",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 7),
              DataTextDisplay(
                label: "Amount",
                data: 'GHS ' + transaction.amount.toString(),
              ),
              SizedBox(height: 5),
              DataTextDisplay(
                label: "Order Id",
                data: transaction.actionId.substring(0, 6),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}

class DataTextDisplay extends StatelessWidget {
  final String label;
  final String data;

  const DataTextDisplay({
    Key? key,
    required this.label,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              label + ":",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black54,
                fontSize: 12,
              ),
            )),
        Expanded(
            flex: 3,
            child: Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 13,
              ),
            )),
      ],
    );
  }
}
