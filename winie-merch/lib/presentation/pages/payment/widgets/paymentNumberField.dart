import 'package:flutter/material.dart';

class PaymentNumberField extends StatefulWidget {
  final TextEditingController? numberController;
  final int? type;
  final bool? enabled;

  const PaymentNumberField({
    this.numberController,
    this.enabled,
    this.type,
  });

  @override
  _PaymentNumberFieldState createState() => _PaymentNumberFieldState();
}

class _PaymentNumberFieldState extends State<PaymentNumberField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: TextField(
        autofocus: false,
        autocorrect: false,
        enabled: widget.enabled,
        keyboardType: TextInputType.number,
        controller: widget.numberController,
        decoration: InputDecoration(
          counterText: '',
          hintText: 'Mobile Account Number',
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          suffixIcon: Icon(
            Icons.phonelink_ring,
            color: Colors.green,
          ),
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade100,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
