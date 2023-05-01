// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:share/share.dart';
// import 'package:winie_merch/domain/core/extensions.dart';
// import 'package:winie_merch/domain/orders/entities/order.dart';
// import 'package:winie_merch/presentation/pages/orders/widgets/orderButton.dart';
// import 'package:winie_merch/presentation/pages/orders/widgets/orderProfile.dart';
// import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';
// import 'package:winie_merch/presentation/pages/widgets/forms/authButton.dart';
// import 'package:winie_merch/presentation/pages/widgets/forms/numberField.dart';
// import 'package:winie_merch/presentation/routes/router.gr.dart';

// class SendOrder extends StatelessWidget {
//   final SaleOrder order;

//   SendOrder({
//     required this.order,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return OrderButton(
//       color: Colors.blue,
//       buttonText: 'Send Order',
//       buttonAction: () async {
//         AutoRouter.of(context).navigate(SendOrderRoute(order: order));
//       },
//       icon: Icons.electric_bike,
//     );
//   }
// }

// class SendOrderPage extends StatefulWidget {
//   final SaleOrder order;

//   const SendOrderPage({
//     Key? key,
//     required this.order,
//   }) : super(key: key);

//   @override
//   _SendOrderPageState createState() => _SendOrderPageState();
// }

// class _SendOrderPageState extends State<SendOrderPage> {
//   sendToRider(BuildContext context) {
//     Share.share(
//       makeMessage(),
//       subject: "Delivery order",
//     );
//   }

//   makeMessage() {
//     return '''
//     Delivery information
//     ------------------------------------------------
//     Store name: ${widget.order.storeName}
//     Store number: ${widget.order.merchantPhoneNumber}
//     Store pickup address: ${widget.order.pickLocation} 
//     ------------------------------------------------
//     Customer name: ${widget.order.name}
//     Customer number: ${widget.order.contactNumber}
//     Customer dropoff address: ${widget.order.dropLocation}
//     ------------------------------------------------
//     Delivery amount: ₵10.00
//     ------------------------------------------------
//     Earn more cash when you deliver for Winie 
//     ''';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Send order ' + widget.order.id.getOrCrash().substring(0, 6),
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 15,
//               vertical: 35,
//             ),
//             child: Text(
//               "",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 15,
//             ),
//             padding: EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 5,
//             ),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey.shade200),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Column(
//               children: [
//                 Detail(
//                   color: Colors.black,
//                   title: "Delivery cost",
//                   text: "₵10.00",
//                   icon: Icons.payments_outlined,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 15,
//                   ),
//                   child: Divider(),
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Pickup location",
//                   text: "${widget.order.pickLocation}",
//                   icon: FeatherIcons.map_pin,
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Store name",
//                   text: "${widget.order.storeName.capitalize}",
//                   icon: FeatherIcons.home,
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Store name",
//                   text: "${widget.order.merchantPhoneNumber}",
//                   icon: FeatherIcons.phone,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 15,
//                   ),
//                   child: Divider(),
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Dropoff location",
//                   text: "${widget.order.dropLocation}",
//                   icon: FeatherIcons.map_pin,
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Customer Name",
//                   text: "${widget.order.name.capitalize}",
//                   icon: FeatherIcons.user,
//                 ),
//                 Detail(
//                   color: Colors.black,
//                   title: "Customer number",
//                   text: "${widget.order.contactNumber}",
//                   icon: FeatherIcons.phone,
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//           AvoidKeyboard(
//             child: AuthButton(
//               buttonText: 'Send to rider',
//               isActive: true,
//               isLoading: false,
//               onPressedFunc: () {
//                 sendToRider(context);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
