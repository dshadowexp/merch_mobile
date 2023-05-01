import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:share/share.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/vouchers/entities/voucher.dart';
import 'package:winie_merch/infrastructure/voucher/voucher_repository.dart';
import 'package:winie_merch/presentation/pages/account/widgets/bugReport.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../../injection.dart';

class VoucherTile extends StatefulWidget {
  final Voucher data;
  final Store store;
  final Function reload;

  const VoucherTile({
    Key? key,
    required this.reload,
    required this.data,
    required this.store,
  }) : super(key: key);

  @override
  _VoucherTileState createState() => _VoucherTileState();
}

class _VoucherTileState extends State<VoucherTile> {
  List<Map<String, dynamic>> actions = [];

  @override
  void initState() {
    super.initState();
    actions = [
      {
        'name': 'Share',
        'color': Colors.green,
        'icon': FeatherIcons.link,
        'func': () async {
          Share.share(
            "${widget.store.name} is offering a GH₵ ${widget.data} discount on your first order. Use the code ${widget.data.voucherName} to redeem this offer. Shop at ${widget.store.dynamicLink}",
            subject: "Promotions",
          );
        }
      },
      {
        'name': 'Edit',
        'color': Colors.blue,
        'icon': FeatherIcons.edit2,
        'func': () async {
          await AutoRouter.of(context).navigate(
            AddVoucherRoute(
              store: widget.store,
              voucher: widget.data,
            ),
          );
        }
      },
      {
        'name': 'Delete',
        'color': Colors.red,
        'icon': FeatherIcons.trash,
        'func': () async {
          authQuestion(
            context,
            'Delete',
            "Are you sure you want to delete this voucher",
            (answer) async {
              if (answer) {
                var voucRepo = getIt<VoucherRepository>();
                await showAsyncReportDialog(
                  context,
                  () async {
                    await voucRepo.deleteVoucher(
                        widget.data.voucherName, widget.store.id.getOrCrash());
                  },
                );
                widget.reload();
              }
            },
          );
        }
      },
    ];
  }

  List<Widget> voucherOptionTiles() {
    List<Widget> tiles = [];

    tiles.add(
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Divider(),
      ),
    );

    for (int i = 0; i < actions.length; i++) {
      tiles.add(
        ListTile(
          leading: Icon(
            actions[i]['icon'],
            color: actions[i]['color'],
          ),
          title: Text(
            actions[i]['name'],
            style: TextStyle(
              color: actions[i]['color'],
            ),
          ),
          onTap: () async {
            Navigator.pop(context);
            await actions[i]['func']();
          },
        ),
      );
    }

    return tiles;
  }

  actionOptionDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    "Voucher ${widget.data.voucherName}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Column(
                children: voucherOptionTiles(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        actionOptionDialog(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.data.voucherName}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${promoType(widget.data)[0]} promo for ${widget.data.userLimit} customer(s)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 12,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: new LinearPercentIndicator(
                animation: true,
                lineHeight: 5.0,
                animationDuration: 1000,
                percent: widget.data.users.length / widget.data.userLimit,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.white,
                progressColor: Colors.greenAccent,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.data.users.length} Applied",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Expires on " +
                      newdateFormat(DateTime.parse(widget.data.expiryDate)),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<String> promoType(Voucher voucher) {
  if (voucher.payload['discounts']['cash'] > 0) {
    return [
      'GH₵ ' + voucher.payload['discounts']['cash'].toString(),
      'Discounts'
    ];
  } else if (voucher.payload['delivery']['cash'] > 0) {
    return [
      'GH₵ ' + voucher.payload['delivery']['cash'].toString(),
      'Delivery'
    ];
  } else if (voucher.payload['delivery']['decimal'] > 0) {
    return [
      double.parse((voucher.payload['delivery']['decimal']) * 100)
              .toStringAsFixed(1) +
          "%",
      'Delivery'
    ];
  } else if (voucher.payload['discounts']['decimal'] > 0) {
    return [
      ((voucher.payload['discounts']['decimal']) * 100).toStringAsFixed(1) +
          "%",
      'Discounts'
    ];
  } else {
    return ['', ''];
  }
}

String newdateFormat(DateTime date) {
  return DateFormat("EEEE, d-MMM-yyyy").format(date);
}

String dateFormat(DateTime date) {
  return DateFormat("d/MM/yyyy").format(date);
}
