import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeField extends StatelessWidget {
  final bool enabled;
  final Function(String) verifyCode;

  const CodeField({
    Key? key,
    required this.enabled,
    required this.verifyCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 40,
      ),
      child: PinCodeTextField(
        appContext: context,
        autoFocus: true,
        enabled: enabled,
        blinkWhenObscuring: true,
        pastedTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        length: 6,
        animationType: AnimationType.fade,
        validator: (v) {},
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 45,
          fieldWidth: 40,
          fieldOuterPadding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          activeFillColor: Colors.white,
          activeColor: Colors.green,
          inactiveFillColor: Colors.white,
          inactiveColor: Colors.grey.shade200,
          selectedFillColor: Colors.white,
          selectedColor: Colors.green,
          disabledColor: Colors.grey.shade300,
        ),
        cursorColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
        onCompleted: (v) {
          verifyCode(v);
        },
        onChanged: (value) {},
      ),
    );
  }
}
