import 'package:flutter/material.dart';

class WExpandable extends StatefulWidget {
  final Widget child;
  final bool? expand;

  const WExpandable({
    this.expand = false,
    required this.child,
  });
  @override
  _WExpandableState createState() => _WExpandableState();
}

class _WExpandableState extends State<WExpandable>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    _onExpand();
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = CurvedAnimation(
        parent: animationController!, curve: Curves.fastOutSlowIn);
  }

  void _onExpand() {
    if (widget.expand!) {
      animationController!.forward();
    } else {
      animationController!.reverse();
    }
  }

  @override
  void didUpdateWidget(WExpandable oldWidget) {
    super.didUpdateWidget(oldWidget);
    _onExpand();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation!,
      child: widget.child,
    );
  }
}
