import 'package:flutter/material.dart';

import 'bottomNavBar.dart';

class BottomBarButton extends StatefulWidget {
  final bool? showGestured;
  final BottomIcon? bottomType;
  final IconData? buttonIcon;
  final String? note;
  final Color? dotColor;
  final Function? tapFunction;

  const BottomBarButton({
    Key? key,
    this.buttonIcon,
    this.tapFunction,
    this.showGestured,
    this.bottomType,
    this.note,
    this.dotColor,
  }) : super(key: key);

  @override
  _BottomBarButtonState createState() => _BottomBarButtonState();
}

class _BottomBarButtonState extends State<BottomBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.tapFunction!();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: widget.showGestured! ? Color(0xFF48A14D) : Colors.white,
              width: 2.5,
            ),
          ),
        ),
        padding: EdgeInsets.only(
          left: 13,
          right: 13,
          top: 5,
        ),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    widget.buttonIcon,
                    color: widget.showGestured!
                        ? Color(0xFF48A14D)
                        : Colors.black38,
                  ),
                  Text(
                    widget.bottomType.toString().split('.')[1],
                    style: TextStyle(
                      color: widget.showGestured!
                          ? Color(0xFF48A14D)
                          : Colors.black45,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            if (widget.note != null) ...[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.all(2),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: widget.dotColor != null
                        ? widget.dotColor
                        : Colors.green,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  constraints: BoxConstraints(
                    minHeight: 15,
                    minWidth: 15,
                    maxHeight: 15,
                  ),
                  child: Center(
                    child: Text(
                      widget.note!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
