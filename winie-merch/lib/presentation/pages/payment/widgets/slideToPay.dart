import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SlidePay extends StatelessWidget {
  final Function process;

  const SlidePay({
    Key? key,
    required this.process,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (DismissDirection direction) {
        process();
      },
      direction: DismissDirection.startToEnd,
      background: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        child: SafeArea(
          child: Shimmer.fromColors(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15,
                ),
                const SizedBox(width: 15),
                const Text(
                  'Slide to Pay',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
            baseColor: Colors.white,
            highlightColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
