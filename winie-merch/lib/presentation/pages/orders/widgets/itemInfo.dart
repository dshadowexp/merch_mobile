import 'package:flutter/material.dart';
import 'package:winie_merch/domain/cart/entities/cart_item.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/presentation/pages/widgets/expandableCircleAvatarImage.dart';

class ItemInfo extends StatefulWidget {
  final CartItem item;

  const ItemInfo({
    required this.item,
  });

  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: ExpandableCircleAvatarImage(
        imageUrl: widget.item.variation.photos[0],
      ),
      title: Text(
        widget.item.product.name.capitalizeFirstofEach,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "x${widget.item.quantity.toString()}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "  |  ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                if (widget.item.size != null &&
                    widget.item.size.isNotEmpty) ...[
                  Text(
                    "${widget.item.size.toString()}",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  |  ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
                if (widget.item.variation.color.isNotEmpty) ...[
                  Text(
                    "${widget.item.variation.color}",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  |  ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
                Text(
                  "Gh ${widget.item.variation.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  size: 15,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
