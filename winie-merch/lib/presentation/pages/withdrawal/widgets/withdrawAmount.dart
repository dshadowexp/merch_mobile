import 'package:flutter/material.dart';

import 'utils.dart';

class WithdrawAmount extends StatefulWidget {
  final bool enabled;
  final ValueNotifier<String> amountNotifier;
  final ValueNotifier<bool> loadingNotifier;

  const WithdrawAmount({
    Key? key,
    required this.enabled,
    required this.amountNotifier,
    required this.loadingNotifier,
  }) : super(key: key);

  @override
  _WithdrawAmountState createState() => _WithdrawAmountState();
}

class _WithdrawAmountState extends State<WithdrawAmount> {
  final amountController = TextEditingController();

  @override
  void initState() {
    amountController.text = widget.amountNotifier.value;
    super.initState();
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 10,
      ),
      child: ValueListenableBuilder(
        valueListenable: widget.amountNotifier,
        builder: (_, amount, __) => TextField(
          maxLength: 10,
          autofocus: true,
          autocorrect: false,
          enabled: !widget.enabled,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          controller: amountController,
          onChanged: (val) {
            widget.amountNotifier.value = val;
          },
          decoration: InputDecoration(
            counterText: '',
            hintText: '50.00',
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
            ),
            errorStyle: TextStyle(
              fontSize: 11,
              color: Colors.red,
            ),
            errorText: amountValidation(amount as String),
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '      GH₵ ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            isDense: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
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
                color: Color(0xFF48A14D),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
