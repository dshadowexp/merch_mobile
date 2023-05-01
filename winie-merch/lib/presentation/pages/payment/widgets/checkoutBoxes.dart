import 'package:flutter/material.dart';

vodaBox(BuildContext context, List<Widget> body, Function action) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: EdgeInsets.only(top: 15),
        contentPadding: EdgeInsets.only(
          right: 20,
          left: 20,
          top: 10,
          bottom: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        title: Center(
          child: Text(
            'Payment Information',
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
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: body,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        action(false);
                      },
                      icon: Icon(Icons.close),
                    ),
                    IconButton(
                      onPressed: () {
                        action(true);
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
