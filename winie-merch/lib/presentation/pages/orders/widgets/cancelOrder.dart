import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';
import 'package:winie_merch/domain/core/extensions.dart';

import 'orderButton.dart';
import 'orderUtils.dart';

class CancelOrder extends StatelessWidget {
  final UniqueId storeOrderId;

  const CancelOrder({
    required this.storeOrderId,
  });

  @override
  Widget build(BuildContext context) {
    return OrderButton(
      color: Colors.grey,
      buttonText: 'Cancel',
      buttonAction: () {
        AutoRouter.of(context).push(CancelRoute(storeOrderId: storeOrderId));
      },
      icon: Icons.close,
    );
  }
}

class CancelPage extends StatefulWidget {
  final UniqueId storeOrderId;

  const CancelPage({
    required this.storeOrderId,
  });

  @override
  _CancelPageState createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> {
  IOrderRepository _orderRepo = getIt<IOrderRepository>();
  TextEditingController reasonText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Why do you want to cancel?',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: size.width * 0.1,
          right: size.width * 0.1,
          bottom: bottomPadding + 8,
          top: size.height * 0.01,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  onPressed: reasonText.text.isEmpty
                      ? null
                      : () async {
                          await showAsyncLoadingDialog(
                            context,
                            () async {
                              await _orderRepo.cancelOrder(
                                  widget.storeOrderId, reasonText.text);
                            },
                          );

                          Navigator.pop(context);
                        },
                  textColor: Colors.white,
                  child: Text(
                    'Cancel Order',
                  ),
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                'Cancelling orders affects your store rating and performance. Please keep products and store information up to date to minimize cancellations.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          for (String reason in [
            'Price mismatch',
            'Item(s) unavailable',
            'Cannot process order',
            'Cannot meet ready time',
            'Store closed',
            'Other',
          ]) ...[
            InkWell(
              onTap: () {
                setState(() {
                  reasonText.text = reason;
                });
              },
              child: ReasonTile(
                reasonText: reason,
                selected: reasonText.text == reason,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ReasonTile extends StatelessWidget {
  final String reasonText;
  final bool selected;

  const ReasonTile({
    required this.reasonText,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 15,
        left: 15,
        bottom: 10,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            FeatherIcons.alertOctagon,
            color: selected ? Colors.orange : Colors.black54,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              reasonText.capitalize,
              style: TextStyle(
                fontSize: 14,
                color: selected ? Colors.orange : Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
