import 'package:flutter/material.dart';

class ActionTile extends StatefulWidget {
  final Widget icon;
  final String name;
  final Function action;

  const ActionTile({
    Key? key,
    required this.icon,
    required this.name,
    required this.action,
  }) : super(key: key);

  @override
  _ActionTileState createState() => _ActionTileState();
}

class _ActionTileState extends State<ActionTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.action();
      },
      child: Container(
        height: 120,
        width: 150,
        margin: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.08),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              child: widget.icon,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.name,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
