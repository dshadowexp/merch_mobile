import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: JumpingDotsProgressIndicator(
        fontSize: 40.0,
        color: Colors.white,
      ),
    );
  }
}
