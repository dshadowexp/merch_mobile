import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final bool enabled;
  final String hintText;
  final ValueNotifier nameNotifier;

  const NameField({
    Key? key,
    required this.enabled,
    required this.hintText,
    required this.nameNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      child: TextField(
        autofocus: false,
        autocorrect: false,
        enabled: enabled,
        maxLength: 36,
        onChanged: (String value) {
          nameNotifier.value = value.trim();
        },
        decoration: InputDecoration(
          counterText: "",
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
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
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.teal,
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
