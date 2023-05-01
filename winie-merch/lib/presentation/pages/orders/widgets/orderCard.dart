import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/infrastructure/internal_data/time_manage.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import 'orderUtils.dart';

class OrderCard extends StatefulWidget {
  final SaleOrder order;

  const OrderCard({
    required this.order,
  });

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        AutoRouter.of(context).navigate(OrderDetail(order: widget.order));
      },
      tileColor: Colors.white,
      leading: CircleImages(order: widget.order),
      trailing: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: statusColor(widget.order.status),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.order.status.toLowerCase(),
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8,
            color: Colors.white,
          ),
        ),
      ),
      title: Text(
        widget.order.id.getOrCrash().substring(0, 6),
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            "${widget.order.items.length}",
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
          Icon(
            Icons.shopping_bag,
            color: Colors.black54,
            size: 12,
          ),
          Text(
            " • ${timeText(DateTime.parse(widget.order.createdAt))}",
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class CircleImages extends StatelessWidget {
  final SaleOrder? order;

  const CircleImages({
    Key? key,
    this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Wrap(
        children: [
          for (var i = 0; i < min(order!.items.length, 4); i++) ...[
            CircleAvatar(
              radius: 10,
              backgroundImage: CachedNetworkImageProvider(
                order!.items[i].variation.photos[0],
              ),
              backgroundColor: Colors.transparent,
            ),
          ],
          for (var i = 0; i < 4 - order!.items.length; i++) ...[
            CircleAvatar(
              radius: 10,
              child: Icon(
                Icons.fiber_manual_record,
                size: 10,
                color: Colors.grey.shade300,
              ),
              backgroundColor: Colors.grey.shade100,
            ),
          ]
        ],
      ),
    );
  }
}
