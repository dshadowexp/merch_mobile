import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/domain/core/extensions.dart';

class AuthButton extends StatelessWidget {
  final bool isActive;
  final bool isLoading;
  final String buttonText;
  final Function onPressedFunc;

  AuthButton({
    Key? key,
    required this.buttonText,
    required this.isActive,
    required this.onPressedFunc,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 10,
        ),
        child: Column(
          children: [
            isLoading
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: JumpingDotsProgressIndicator(
                      fontSize: 40.0,
                      color: Colors.green,
                    ),
                  )
                : Container(),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 60),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  isActive ? Color(0xFF48A14D) : Colors.transparent,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              onPressed: isActive
                  ? () {
                      onPressedFunc();
                    }
                  : null,
              child: Text(
                buttonText.capitalizeFirstofEach,
                style: TextStyle(
                  fontSize: 21.0,
                  color: isActive ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
