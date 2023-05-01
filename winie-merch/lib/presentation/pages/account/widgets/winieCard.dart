import 'package:flutter/material.dart';

class WinieCard extends StatefulWidget {
  final String? image1;
  final String? image2;
  final String? image3;
  final String title;
  final String message;
  final Function? urlCall;
  final Color color;

  const WinieCard({
    Key? key,
    this.image1,
    this.image2,
    this.image3,
    required this.title,
    required this.message,
    required this.color,
    this.urlCall,
  }) : super(key: key);

  @override
  _WinieCardState createState() => _WinieCardState();
}

class _WinieCardState extends State<WinieCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await widget.urlCall!();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade50,
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleProv(asset: widget.image1!),
                    CircleProv(asset: widget.image2!),
                    CircleProv(asset: widget.image3!),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleProv extends StatelessWidget {
  final asset;

  const CircleProv({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(asset),
        backgroundColor: Colors.grey.shade100,
      ),
    );
  }
}
