import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class From extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.width * 0.04,
      ),
      child: Column(
        children: [
          Text(
            'from',
            style: TextStyle(
              color: Color(0xFF7B7B7C),
            ),
          ),
          Shimmer.fromColors(
            child: Text(
              'zulwinie'.toUpperCase(),
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 20,
                color: Color(0xFF48A14D),
              ),
            ),
            period: Duration(milliseconds: 3000),
            direction: ShimmerDirection.rtl,
            baseColor: Color(0xFF48A14D),
            highlightColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
