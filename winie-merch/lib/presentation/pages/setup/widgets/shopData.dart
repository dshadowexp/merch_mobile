import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/presentation/pages/address/addressPage.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs/productDialog.dart';
import 'package:winie_merch/presentation/pages/widgets/productFieldsList.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';
import 'package:winie_merch/presentation/pages/widgets/slideRoutes.dart';

import '../../widgets/infoCard.dart';

class ShopData extends StatefulWidget {
  final Map<String, dynamic> savedData;
  final Function(Map) data;

  const ShopData({
    required this.data,
    required this.savedData,
  });

  @override
  _ShopDataState createState() => _ShopDataState();
}

class _ShopDataState extends State<ShopData> {
  final shopName = ValueNotifier<String>("");
  final shopAddress = ValueNotifier<String>("");
  final shopNumber = ValueNotifier<String>("");
  final timeRange = ValueNotifier<String>("");

  @override
  void initState() {
    super.initState();
    if (widget.savedData.containsKey("storeName")) {
      shopName.value = widget.savedData["storeName"];
    }
    if (widget.savedData.containsKey("address")) {
      shopAddress.value = widget.savedData["address"];
    }
    if (widget.savedData.containsKey("shopContact")) {
      shopNumber.value = widget.savedData["shopContact"];
    }
    if (widget.savedData.containsKey('timeRange')) {
      timeRange.value = widget.savedData["timeRange"];
    }
  }

  @override
  void dispose() {
    shopNumber.dispose();
    shopName.dispose();
    shopAddress.dispose();
    timeRange.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              child: Text(
                "Shop details provide identifying and critical information for shoppers and riders",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SetupForms(
              notifier: shopName,
              description: "Shop Name",
              icon: FeatherIcons.database,
              onChange: (val) {
                shopName.value = val!;
                widget.data({
                  "storeName": shopName.value.trim(),
                });
              },
            ),
            SetupForms(
              inputType: TextInputType.number,
              notifier: shopNumber,
              description: "Shop Contact Number",
              icon: FeatherIcons.phone,
              validation: validateContactNumber,
              onChange: (val) {
                shopNumber.value = val!;
                widget.data({
                  "shopContact": shopNumber.value.trim(),
                });
              },
            ),
            GestureDetector(
              onTap: () async {
                String _address = await Navigator.push(
                  context,
                  SlideDownRoute(
                    page: AddressPage(
                      addressController:
                          TextEditingController(text: shopAddress.value),
                    ),
                  ),
                );
                if (_address.isNotEmpty) {
                  shopAddress.value = _address;

                  widget.data({
                    "address": _address,
                  });
                }
              },
              child: SetupForms(
                enabled: false,
                notifier: shopAddress,
                description: "Shop Address",
                icon: FeatherIcons.mapPin,
              ),
            ),
            InfoCard(
              info:
                  "Select the time duration it takes to make a product available for pick up on your orders",
            ),
            ProductListDialog(
              icon: Icons.timelapse,
              name: 'Time Range',
              notifier: timeRange,
              enabled: true,
              dialogOptions: time.map((e) => e.name).toList(),
              select: (String time) {
                timeRange.value = time;
                widget.data({
                  "timeRange": timeRange.value,
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
