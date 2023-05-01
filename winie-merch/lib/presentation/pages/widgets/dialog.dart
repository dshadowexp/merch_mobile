import 'package:flutter/material.dart';

showFailedDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      Future.delayed(
        Duration(seconds: 1),
        () {
          Navigator.pop(context);
        },
      );

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text('Failed'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              color: Colors.red,
              size: 40,
            ),
            Text(
              'Failed',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
    },
  );
}

showCompletedDialog(BuildContext context, String completedText) async {
  return await showDialog(
    context: context,
    builder: (context) {
      Future.delayed(
        Duration(seconds: 2),
        () {
          Navigator.pop(context);
        },
      );

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text('Completed'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check,
              color: Colors.green,
              size: 40,
            ),
            Text(
              completedText,
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
    },
  );
}

showLoadingDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        Future.delayed(
          Duration(seconds: 2),
          () async {
            Navigator.pop(context);
          },
        );

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          backgroundColor: Colors.white,
          title: Text('Loading'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  strokeWidth: 6.0,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
