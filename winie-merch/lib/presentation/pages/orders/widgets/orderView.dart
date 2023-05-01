import 'package:flutter/material.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderDetail.dart';

class OrderView extends StatelessWidget {
  final String storeOrderId;
  final Future<SaleOrder> storeOrder;

  const OrderView({
    required this.storeOrderId,
    required this.storeOrder,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      child: FutureBuilder(
        future: storeOrder,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return TempOrderView(
              orderId: storeOrderId,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return OrderDetail(
              order: snapshot.data as SaleOrder,
            );
          } else {
            return TempOrderView(
              orderId: storeOrderId,
              child: Column(
                children: [],
              ),
            );
          }
        },
      ),
    );
  }
}

class TempOrderView extends StatelessWidget {
  final String orderId;
  final Widget child;

  const TempOrderView({
    required this.orderId,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close_outlined,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Order ' + orderId.substring(0, 8),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
