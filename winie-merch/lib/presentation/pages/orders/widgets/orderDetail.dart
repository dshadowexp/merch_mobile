import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/orders/s_order/s_order_bloc.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/presentation/pages/orders/map/mapTrack.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/itemInfo.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderProfile.dart';

import 'cancelOrder.dart';
import 'orderActions.dart';
import 'orderUtils.dart';

class OrderDetail extends StatefulWidget {
  final SaleOrder order;

  const OrderDetail({
    required this.order,
  });

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  void initState() {
    context
        .read<SOrderBloc>()
        .add(SOrderEvent.watchOrder(widget.order.id.getOrCrash()));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Widget> statusActions(SaleOrder order) {
    switch (order.status.toLowerCase()) {
      case 'pending':
        return [
          CancelOrder(
            storeOrderId: order.id,
          ),
          ConfirmOrder(
            storeOrderId: order.id,
          ),
        ];
      case 'confirmed':
        return [
          ReadyOrder(
            storeOrderId: order.id,
          ),
        ];
      case 'ready':
        return [
          FindRider(
            order: order,
          ),
        ];
      case 'requesting':
        return [
          Center(
            child: JumpingDotsProgressIndicator(
              fontSize: 40.0,
              color: Colors.teal,
            ),
          ),
        ];
      case 'accepted':
      case 'pickedup':
        return [
          CallCode(
            tripId: order.id.getOrCrash(),
            driverNumber: order.driverId,
          ),
        ];
      case 'delivering':
      case 'pickingup':
        return [
          MapTrack(
            order: order,
          ),
        ];
      default:
        return [];
    }
  }

  List<Widget> statusDescriptions(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return [
          ActionDescription(
            color: Colors.grey,
            actionName: 'cancel',
          ),
          ActionDescription(
            color: Colors.green,
            actionName: 'confirm',
          ),
        ];
      case 'confirmed':
        return [
          ActionDescription(
            color: Colors.blue,
            actionName: 'ready',
          ),
        ];
      case 'ready':
        return [
          ActionDescription(
            color: Colors.teal,
            actionName: 'find rider',
          ),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order ' + widget.order.id.getOrCrash().substring(0, 6),
          style: GoogleFonts.mulish().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 7,
            ),
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<SOrderBloc, SOrderState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loadSuccess: (loadedOrder) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ...statusDescriptions(loadedOrder.order.status),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                loadedOrder.order.status.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ...statusActions(loadedOrder.order),
                            ],
                          ),
                        ],
                      );
                    },
                    orElse: () {
                      return Container();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            OrderProfile(
              order: widget.order,
            ),
            BlocBuilder<SOrderBloc, SOrderState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
                  loadInProgress: (_) => Center(
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  loadSuccess: (loadedOrder) {
                    return Column(
                      children: [
                        for (int i = 0;
                            i < loadedOrder.order.items.length;
                            i++) ...[
                          Column(
                            children: [
                              ItemInfo(
                                item: loadedOrder.order.items[i],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Divider(),
                              ),
                            ],
                          ),
                        ],
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ActionDescription extends StatelessWidget {
  final String actionName;
  final Color color;

  const ActionDescription({
    Key? key,
    required this.color,
    required this.actionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: actionName,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: ': ' + actionText(actionName),
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
