import 'package:flutter/material.dart';

class AccountNumber extends StatefulWidget {
  final String number;

  const AccountNumber({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  _AccountNumberState createState() => _AccountNumberState();
}

class _AccountNumberState extends State<AccountNumber> {
  final numberController = TextEditingController();

  @override
  void initState() {
    numberController.text = widget.number;
    super.initState();
  }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      child: TextField(
        maxLength: 10,
        autofocus: false,
        autocorrect: false,
        enabled: false,
        keyboardType: TextInputType.number,
        controller: numberController,
        decoration: InputDecoration(
          counterText: '',
          hintText: 'Phone Number',
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          prefixIcon: Icon(
            Icons.phonelink_ring,
            color: Colors.black,
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
              color: Color(0xFF48A14D),
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
