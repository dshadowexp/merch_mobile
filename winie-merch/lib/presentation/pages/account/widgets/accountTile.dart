import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final String actionText;
  final Function actionFunction;
  final IconData icon;

  const AccountTile({
    Key? key,
    required this.actionText,
    required this.actionFunction,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      child: ListTile(
        dense: true,
        onTap: () async {
          await actionFunction();
        },
        tileColor: Colors.white,
        title: Text(
          actionText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Icon(
          icon,
          color: Color(0xFF48A14D),
        ),
      ),
    );
  }
}
