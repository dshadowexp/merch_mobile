import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';

class OrderProfile extends StatelessWidget {
  final SaleOrder order;

  const OrderProfile({required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Detail(
            color: Colors.black,
            title: "Name",
            text: order.name.capitalizeFirstofEach,
            icon: FeatherIcons.userCheck,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Detail(
            color: Colors.black,
            title: "Ordered on",
            text: DateFormat('E, d MMM | H:m a').format(
              DateTime.parse(order.createdAt),
            ),
            icon: FeatherIcons.calendar,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Detail(
            color: Colors.black,
            title: "Delivery address",
            text: "${order.dropLocation}",
            icon: FeatherIcons.mapPin,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Detail(
            color: Colors.black,
            title: "Ready by",
            text: DateFormat('E, d MMM | H:m a').format(
              DateTime.parse(order.estimatedDeliveryTime),
            ),
            icon: Icons.departure_board_outlined,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Detail(
            color: Colors.black,
            title: "Amount Total",
            text:
                'Gh ${double.parse(order.subTotal.toString()).toStringAsFixed(2)}',
            icon: Icons.payments_outlined,
          ),
          BrokenLine(),
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String text;

  const Detail({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 8,
          ),
          child: Icon(
            icon,
            size: 21,
            color: color,
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: title + (title.isNotEmpty ? ': ' : ' '),
              style: GoogleFonts.mulish().copyWith(
                color: Colors.black54,
              ),
              children: [
                TextSpan(
                  text: text,
                  style: GoogleFonts.mulish().copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BrokenLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < 20; i++) ...[
            Container(
              height: 2,
              margin: EdgeInsets.only(
                right: 5,
                top: 10,
                bottom: 5,
              ),
              width: ((size.width - 36) - (5 * 20)) / 20,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            )
          ]
        ],
      ),
    );
  }
}
