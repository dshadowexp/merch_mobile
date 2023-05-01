import 'dart:async';
import 'package:flutter/material.dart';

bool canFunction(String status) {
  switch (status.toLowerCase()) {
    case 'delivering':
    case 'delivered':
    case 'completed':
    case 'cancelled':
    case 'pending':
      return true;
    default:
      return false;
  }
}

Color statusColor(String status) {
  switch (status.toLowerCase()) {
    case 'pending':
      return Colors.red;
    case 'confirmed':
    case 'ready':
      return Colors.amber;
    case 'pickingup':
    case 'requesting':
    case 'delivering':
    case 'assigned':
      return Colors.teal;
    case 'delivered':
    case 'completed':
      return Colors.green;
    case 'cancelled':
      return Colors.grey;
    default:
      return Colors.black;
  }
}

String actionText(String name) {
  switch (name.toLowerCase()) {
    case 'cancel':
      return 'You cannot fulfil all items in order';
    case 'confirm':
      return 'Proceed to fulfil this order';
    case 'ready':
      return 'Items are packaged and ready for pickup';
    case 'find rider':
      return 'Request the nearest rider to you for pickup';
    case 'send order':
      return 'Send delivery details to your rider';
    default:
      return '';
  }
}

showAsyncLoadingDialog(BuildContext context, Function asyncFunction) async {
  Future<dynamic> funcResponse = asyncFunction();

  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FutureBuilder(
                future: funcResponse,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 3.0,
                      ),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    Timer(
                      Duration(milliseconds: 500),
                      () {
                        Navigator.pop(context);
                      },
                    );
                    return Icon(
                      Icons.check,
                      size: 32,
                      color: Colors.green,
                    );
                  } else {
                    return Text(
                      '',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    ),
  );
}
