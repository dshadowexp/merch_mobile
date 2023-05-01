import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String? sectionTitle;
  final IconData? icon;

  const SectionTitle({
    Key? key,
    this.sectionTitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF48A14D),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              sectionTitle!,
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
