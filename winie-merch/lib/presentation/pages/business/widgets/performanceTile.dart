import 'package:flutter/material.dart';

class PerformanceTile extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String name;
  final String performance;

  const PerformanceTile({
    Key? key,
    required this.icon,
    required this.color,
    required this.name,
    required this.performance,
  }) : super(key: key);

  @override
  _PerformanceTileState createState() => _PerformanceTileState();
}

class _PerformanceTileState extends State<PerformanceTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: Icon(
              widget.icon,
              color: widget.color,
            ),
          ),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.performance,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.color,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
