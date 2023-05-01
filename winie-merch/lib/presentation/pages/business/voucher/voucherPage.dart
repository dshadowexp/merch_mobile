import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/vouchers/entities/voucher.dart';
import 'package:winie_merch/infrastructure/voucher/voucher_repository.dart';
import 'package:winie_merch/presentation/pages/widgets/emptySection.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../injection.dart';
import 'widgets/voucherTile.dart';

class VoucherPage extends StatefulWidget {
  final Store store;

  const VoucherPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  final voucherRepo = getIt<VoucherRepository>();
  late Future<List<Voucher>> transactionsHistory;
  String type = '';

  @override
  void initState() {
    transactionsHistory =
        voucherRepo.loadVouchers(widget.store.id.getOrCrash());
    super.initState();
  }

  addVoucher() async {
    await AutoRouter.of(context).navigate(
      AddVoucherRoute(
        store: widget.store,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          "Vouchers",
          style: GoogleFonts.mulish().copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        heroTag: UniqueKey(),
        backgroundColor: Colors.blue,
        onPressed: () async {
          await addVoucher();

          setState(() {
            transactionsHistory =
                voucherRepo.loadVouchers(widget.store.id.getOrCrash());
          });
        },
        child: Center(
          child: Icon(
            FeatherIcons.gift,
            color: Colors.white,
          ),
        ),
      ),
      body: voucherRepo.vouchersHistory.length > 0
          ? SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0;
                        i < voucherRepo.vouchersHistory.length;
                        i++) ...[
                      VoucherTile(
                        data: voucherRepo.vouchersHistory[i],
                        store: widget.store,
                        reload: () {
                          setState(() {});
                        },
                      ),
                    ],
                  ],
                ),
              ),
            )
          : FutureBuilder(
              future: transactionsHistory,
              initialData: [],
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                Widget animatedWidget;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  animatedWidget = Center(
                    child: JumpingDotsProgressIndicator(
                      fontSize: 40.0,
                      color: Colors.blue,
                    ),
                  );
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if ((snapshot.data as List<Voucher>).isEmpty) {
                    animatedWidget = StartVoucher(addVoucher: addVoucher);
                  } else {
                    animatedWidget = SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var i = 0;
                                i < voucherRepo.vouchersHistory.length;
                                i++) ...[
                              VoucherTile(
                                data: voucherRepo.vouchersHistory[i],
                                store: widget.store,
                                reload: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  }
                } else {
                  animatedWidget = EmptySection(
                    icon: FeatherIcons.activity,
                    text: 'Something went wrong',
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

class StartVoucher extends StatelessWidget {
  final Function addVoucher;

  const StartVoucher({
    Key? key,
    required this.addVoucher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 60,
            ),
            child: Text(
              'Create and share a voucher',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 50,
            ),
            child: Text(
              'To drive more customers to your shop, you can create shopping vouchers with discounts and share to your customers.',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(170, 50),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
              onPressed: () async {
                await addVoucher();
              },
              child: Text(
                "Create a voucher",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
