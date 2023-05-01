import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';
import 'package:winie_merch/presentation/pages/business/widgets/actionTile.dart';
import 'package:winie_merch/presentation/pages/business/widgets/cashAccountTile.dart';
import 'package:winie_merch/presentation/pages/business/widgets/payoutCard.dart';
import 'package:winie_merch/presentation/pages/business/widgets/performanceTile.dart';
import 'package:winie_merch/presentation/pages/widgets/emptySection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({
    Key? key,
  }) : super(key: key);

  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Business',
          style: GoogleFonts.mulish().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<StoreBloc, StoreState>(
        builder: (context, state) {
          Widget animatedWidget;
          switch (state.status) {
            case StoreStatus.success:
              if (state.currentStore != null) {
                animatedWidget = ListView(
                  children: [
                    PayoutCard(
                      store: state.currentStore!,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ActionTile(
                          icon: Icon(
                            Icons.list,
                            color: Colors.green,
                          ),
                          name: 'Transactions',
                          action: () {
                            AutoRouter.of(context).navigate(
                              TransactionHistoryRoute(
                                storeId: state.currentStore!.id.getOrCrash(),
                              ),
                            );
                          },
                        ),
                        ActionTile(
                          icon: Icon(
                            FeatherIcons.gift,
                            color: Colors.green,
                          ),
                          name: 'Vouchers',
                          action: () {
                            AutoRouter.of(context).navigate(
                              VoucherRoute(
                                store: state.currentStore!,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PerformanceTile(
                          icon: FeatherIcons.creditCard,
                          color: Colors.black,
                          name: 'Total Earnings',
                          performance: 'Gh ' +
                              state.currentStore!.currentbalance
                                  .toStringAsFixed(2),
                        ),
                        CashAccountTile(
                          accountNumber: state.currentStore!.merchmomoaccount,
                          bank: state.currentStore!.network,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PerformanceTile(
                          icon: Icons.check_circle,
                          color: Colors.blue,
                          name: 'Completed Orders',
                          performance:
                              state.currentStore!.completedOrders.toString(),
                        ),
                        PerformanceTile(
                          icon: Icons.cancel,
                          color: Colors.red,
                          name: 'Cancelled Orders',
                          performance:
                              state.currentStore!.cancelledOrders.toString(),
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                animatedWidget = EmptySection(
                  icon: Icons.local_activity,
                  text: 'Your shop activity will show here',
                );
              }
              break;
            case StoreStatus.loading:
              animatedWidget = Center(
                child: JumpingDotsProgressIndicator(
                  fontSize: 40.0,
                  color: Colors.green,
                ),
              );
              break;
            default:
              animatedWidget = EmptySection(
                icon: Icons.local_activity,
                text: 'Your shop activity will show here',
              );
          }
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 150),
            child: animatedWidget,
          );
        },
      ),
    );
  }
}
