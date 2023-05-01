import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:shimmer/shimmer.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import 'orderButton.dart';
import 'orderUtils.dart';

final IOrderRepository _orderRepo = getIt<IOrderRepository>();

class ConfirmOrder extends StatelessWidget {
  final UniqueId storeOrderId;

  ConfirmOrder({
    required this.storeOrderId,
  });

  @override
  Widget build(BuildContext context) {
    return OrderButton(
      color: Colors.green,
      buttonText: 'Confirm',
      buttonAction: () async {
        await showAsyncLoadingDialog(
          context,
          () async {
            await _orderRepo.confirmOrder(storeOrderId);
          },
        );
      },
      icon: Icons.check,
    );
  }
}

class ReadyOrder extends StatelessWidget {
  final UniqueId storeOrderId;

  ReadyOrder({
    required this.storeOrderId,
  });

  @override
  Widget build(BuildContext context) {
    return OrderButton(
      color: Colors.blue,
      buttonText: 'Ready',
      buttonAction: () async {
        await showAsyncLoadingDialog(
          context,
          () async {
            await _orderRepo.readyOrder(storeOrderId, 'ready');
          },
        );
      },
      icon: FeatherIcons.archive,
    );
  }
}

class FindRider extends StatelessWidget {
  final SaleOrder order;

  FindRider({
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return OrderButton(
      color: Colors.teal,
      buttonText: 'Find Rider',
      buttonAction: () async {
        await AutoRouter.of(context).navigate(
          MapRequest(order: order),
        );
      },
      icon: FeatherIcons.mapPin,
    );
  }
}

showDriverFindingDialog(BuildContext context, Function asyncFunction) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        Future<dynamic> funcResponse = asyncFunction();

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Shimmer.fromColors(
              baseColor: Colors.black,
              highlightColor: Colors.grey.shade100,
              period: Duration(milliseconds: 3000),
              child: Text(
                'Requesting rider',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FutureBuilder(
                future: funcResponse,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 3.0,
                      ),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: [
                        Icon(
                          Icons.electric_bike,
                          size: 32,
                          color: Colors.green,
                        ),
                        Text(
                          snapshot.data as String,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.check,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    Timer(Duration(milliseconds: 2000), () {
                      Navigator.pop(context);
                    });
                    return Text(
                      'Error Ordered',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    ),
  );
}
