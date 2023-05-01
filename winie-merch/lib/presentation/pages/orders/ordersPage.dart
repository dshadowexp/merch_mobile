import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/orders/orders_bloc.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderCard.dart';
import 'package:winie_merch/presentation/pages/widgets/emptySection.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreBloc, StoreState>(
      listener: (context, state) {
        switch (state.status) {
          case StoreStatus.success:
            if (state.currentStore != null) {
              context.read<OrdersBloc>().add(OrdersEvent.watchOrdersStarted(
                  state.currentStore!.id.getOrCrash()));
            }
            break;
          default:
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orders',
            style: GoogleFonts.mulish().copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              color: Colors.grey.shade100,
              child: Row(
                children: [
                  Expanded(
                    child: const Text(
                      'Track and fulfil orders in realtime',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<OrdersBloc, OrdersState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Container(
                        child: Center(
                          child: JumpingDotsProgressIndicator(
                            fontSize: 40.0,
                            color: Colors.green,
                          ),
                        ),
                      );
                    },
                    loadFailure: (state) => EmptySection(
                      icon: Icons.error,
                      text: 'Something went wrong',
                    ),
                    loadOrders: (state) {
                      if (state.orders.isEmpty) {
                        return EmptySection(
                          icon: FeatherIcons.shoppingBag,
                          text: 'Your orders will appear here',
                        );
                      }

                      return ListView.builder(
                        itemCount: state.orders.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              OrderCard(
                                order: state.orders[index],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Divider(),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
