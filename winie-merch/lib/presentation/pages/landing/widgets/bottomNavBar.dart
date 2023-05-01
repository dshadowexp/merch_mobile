import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/application/orders/orders_bloc.dart';

import 'bottomBarButton.dart';

enum BottomIcon { Shop, Orders, Business, Account }

class BottomNavBar extends StatefulWidget {
  final BottomIcon icon;
  final Function(BottomIcon) changeIcon;

  const BottomNavBar({
    Key? key,
    required this.icon,
    required this.changeIcon,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  _renderButton(BottomIcon bottomIcon, IconData buttonIcon,
      {String? note, required Color color}) {
    return BottomBarButton(
      bottomType: bottomIcon,
      buttonIcon: buttonIcon,
      showGestured: bottomIcon == widget.icon,
      tapFunction: () {
        widget.changeIcon(bottomIcon);
      },
      note: note,
      dotColor: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
      ),
      margin: EdgeInsets.only(
        bottom: bottomPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _renderButton(
            BottomIcon.Shop,
            FeatherIcons.home,
            note: '',
            color: Colors.transparent,
          ),
          BlocBuilder<OrdersBloc, OrdersState>(
            builder: (context, state) {
              String? note;
              Color color = Colors.grey;
              state.maybeMap(
                loadOrders: (stateOrders) {
                  int count = 0;
                  for (var order in stateOrders.orders) {
                    if (order.status.toLowerCase() == 'pending' ||
                        order.status.toLowerCase() == 'ready' ||
                        order.status.toLowerCase() == 'confirmed' ||
                        order.status.toLowerCase() == 'pickingup') {
                      count += 1;
                      color = Colors.redAccent;
                    }
                  }
                  if (count > 0) {
                    note = count.toString();
                  }
                },
                orElse: () {},
              );
              return _renderButton(
                BottomIcon.Orders,
                FeatherIcons.shoppingBag,
                note: note,
                color: color,
              );
            },
          ),
          _renderButton(BottomIcon.Business, FeatherIcons.activity,
              color: Colors.transparent, note: ''),
          _renderButton(BottomIcon.Account, FeatherIcons.user,
              color: Colors.transparent, note: '')
        ],
      ),
    );
  }
}
