import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/vouchers/entities/voucher.dart';
import 'package:winie_merch/infrastructure/voucher/voucher_repository.dart';
import 'package:winie_merch/presentation/pages/account/widgets/bugReport.dart';
import 'package:winie_merch/presentation/pages/business/voucher/widgets/voucherFeild.dart';
import 'package:winie_merch/presentation/pages/business/voucher/widgets/voucherTile.dart';
import 'package:winie_merch/presentation/pages/widgets/customOptions.dart';
import 'package:winie_merch/presentation/pages/widgets/optionsList.dart';
import 'package:winie_merch/presentation/pages/widgets/productFieldsList.dart';

import '../../../../injection.dart';

class AddVoucherPage extends StatefulWidget {
  final Store store;
  final Voucher? voucher;

  const AddVoucherPage({
    Key? key,
    required this.store,
    this.voucher,
  }) : super(key: key);

  @override
  _AddVoucherPageState createState() => _AddVoucherPageState();
}

class _AddVoucherPageState extends State<AddVoucherPage> {
  OptionModel selectedOption =
      OptionModel(icon: FeatherIcons.clock, val: 1, name: "product");
  OptionModel selectedType =
      OptionModel(icon: FeatherIcons.clock, val: -1, name: "");
  TextEditingController controller = TextEditingController();
  TextEditingController userController = TextEditingController();
  String voucherCode = '';
  String date = '';
  String initalDate = '';
  List<String> users = [];

  _checkEdit() {
    if (widget.voucher != null) {
      userController =
          TextEditingController(text: widget.voucher!.userLimit.toString());
      initalDate = widget.voucher!.expiryDate;
      date = widget.voucher!.expiryDate;
      users = widget.voucher!.users;

      voucherCode = widget.voucher!.voucherName;
      List<String> data = promoType(widget.voucher!);
      if (data[0].contains("%")) {
        ListModel _selectType1 = voucherType.firstWhere((e) => e.code == 2);
        selectedType = OptionModel(
            val: _selectType1.code,
            icon: FeatherIcons.gift,
            name: _selectType1.name);
      }
      if (data[0].contains("GH")) {
        ListModel _selectType = voucherType.firstWhere((e) => e.code == 1);
        selectedType = OptionModel(
            val: _selectType.code,
            icon: FeatherIcons.gift,
            name: _selectType.name);
      }
      if (data[1].contains("count")) {
        ListModel _select = voucherOption.firstWhere((e) => e.code == 1);
        selectedOption = OptionModel(
            val: _select.code, icon: FeatherIcons.gift, name: _select.name);
      }
      if (data[1].contains("very")) {
        ListModel _select = voucherOption.firstWhere((e) => e.code == 2);
        selectedOption = OptionModel(
            val: _select.code, icon: FeatherIcons.gift, name: _select.name);
      }
      if (data[0].contains("%") && data[1].contains("very")) {
        controller = TextEditingController(
            text: ((widget.voucher!.payload['delivery']['decimal']) * 100)
                .toString());
      }
      if (data[0].contains("%") && data[1].contains("count")) {
        controller = TextEditingController(
            text: ((widget.voucher!.payload['discounts']['decimal']) * 100)
                .toString());
      }
      if (data[0].contains("GH") && data[1].contains("very")) {
        controller = TextEditingController(
            text: widget.voucher!.payload['delivery']['cash'].toString());
      }
      if (data[0].contains("GH") && data[1].contains("count")) {
        controller = TextEditingController(
            text: widget.voucher!.payload['discounts']['cash'].toString());
      }
    } else {
      voucherCode = _generateCode(widget.store.name).toUpperCase();
    }
  }

  @override
  void initState() {
    super.initState();
    _checkEdit();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
              ),
            )
          ],
          title: Text(
            (initalDate != null && initalDate.length > 3)
                ? "Edit Voucher"
                : "Create Voucher",
            style: GoogleFonts.mulish().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Voucher Code",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          voucherCode,
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 18),
                      Text(
                        "Voucher Type",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      CustomOptions(
                        list: voucherType
                            .asMap()
                            .map(
                              (i, e) => MapEntry(
                                i,
                                OptionModel(
                                  val: i,
                                  icon: FeatherIcons.gift,
                                  name: e.name,
                                ),
                              ),
                            )
                            .values
                            .toList(),
                        selected: selectedType,
                        onSelect: (val) {
                          setState(() {
                            selectedType = val;
                          });
                        },
                      ),
                      SizedBox(height: 18),
                      VoucherField(
                        title: "Enter ${selectedType.name}",
                        controller: controller,
                        type: selectedType.name,
                      ),
                      SizedBox(height: 18),
                      VoucherField(
                        title: "Number of users",
                        controller: userController,
                        type: 'users',
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Expiry Date",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      ExipryDate(
                        initialDate: widget.voucher != null
                            ? widget.voucher!.expiryDate
                            : '',
                        date: (val) {
                          setState(() {
                            date = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    if (selectedOption.name.length < 2 ||
                        selectedType.name.length < 2 ||
                        controller.text.isEmpty ||
                        userController.text.isEmpty ||
                        date.length < 2) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("please fill all fields"),
                        duration: Duration(seconds: 3),
                      ));
                    } else {
                      var data = {
                        "payload": {
                          "delivery": {
                            "cash": selectedOption.name == 'delivery' &&
                                    selectedType.name == 'cash'
                                ? int.parse(controller.text)
                                : 0,
                            "decimal": selectedOption.name == 'delivery' &&
                                    selectedType.name == 'percentage'
                                ? double.parse(controller.text) / 100
                                : 0,
                          },
                          "discounts": {
                            "cash": selectedOption.name == 'product' &&
                                    selectedType.name == 'cash'
                                ? int.parse(controller.text)
                                : 0,
                            "decimal": selectedOption.name == 'product' &&
                                    selectedType.name == 'percentage'
                                ? double.parse(controller.text) / 100
                                : 0,
                          },
                        },
                        "voucherName": voucherCode.toLowerCase(),
                        "userLimit": int.parse(userController.text),
                        "expiryDate": date,
                        "users": users,
                        "storeId": widget.store.id.getOrCrash()
                      };

                      var voucRepo = getIt<VoucherRepository>();
                      await showAsyncReportDialog(
                        context,
                        () async {
                          if (initalDate != null && initalDate.length > 4) {
                            await voucRepo.editVoucher(data);
                            Navigator.pop(context, true);
                          } else {
                            await voucRepo.addVoucher(data);
                            Navigator.pop(context, true);
                          }

                          Navigator.pop(context, true);
                        },
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        (initalDate != null && initalDate.length > 3)
                            ? "Edit".toUpperCase()
                            : "Create".toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _generateCode(String storeName) {
  Random _rnd = Random();
  if (storeName.length > 5) {
    return String.fromCharCodes(Iterable.generate(
            5, (_) => storeName.codeUnitAt(_rnd.nextInt(storeName.length)))) +
        _rnd.nextInt(1000).toString().toUpperCase();
  } else {
    return storeName + _rnd.nextInt(1000).toString().toUpperCase();
  }
}
