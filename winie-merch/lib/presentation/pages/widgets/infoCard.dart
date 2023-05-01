import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String info;
  final Color? color;
  final Color? textcolor;
  final Color? iconcolor;

  const InfoCard({
    Key? key,
    required this.info,
    this.color,
    this.textcolor,
    this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            color: iconcolor ?? Colors.white,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              info,
              style: TextStyle(
                color: textcolor ?? Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
