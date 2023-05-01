import 'package:flutter/material.dart';

class MediaAuthButton extends StatelessWidget {
  final Widget mediaIcon;
  final String mediaName;
  final Color mediaColor;
  final Function callFunction;

  const MediaAuthButton({
    Key? key,
    required this.mediaIcon,
    required this.mediaName,
    required this.mediaColor,
    required this.callFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 45,
        left: 45,
        bottom: 10,
      ),
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () async {
          await callFunction();
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            Size(double.infinity, 60),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mediaIcon,
            Text(
              "Sign in with ${mediaName}",
              style: TextStyle(
                color: mediaColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
