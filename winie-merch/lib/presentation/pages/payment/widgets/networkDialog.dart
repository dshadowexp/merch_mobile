import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/infrastructure/transactions/transaction_dto.dart';

class NetworkDialog extends StatefulWidget {
  final TextEditingController networkController;
  final TextEditingController accountNumberController;
  final bool enabled;

  const NetworkDialog({
    Key? key,
    required this.accountNumberController,
    required this.networkController,
    required this.enabled,
  }) : super(key: key);

  @override
  _NetworkDialogState createState() => _NetworkDialogState();
}

class _NetworkDialogState extends State<NetworkDialog> {
  final currentTile = ValueNotifier<int>(-1);

  List<String> mtn = ["024", "054", "055", "059"];
  List<String> airtelTigo = ["027", "057", "026", "056"];
  List<String> voda = ["020", "050"];

  final List<Bank> banks = [
    Bank('AirtelTigo', 'atl'),
    Bank('MTN', 'mtn'),
    Bank('Vodafone', 'vod'),
  ];

  @override
  void initState() {
    widget.accountNumberController.addListener(() {
      if (widget.accountNumberController.text.length > 3) {
        _dynamicNetworkChange(
            widget.accountNumberController.text.substring(0, 3));
      }
    });
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  _changenetwork(int index) {
    currentTile.value = index;
    if (index > -1) {
      widget.networkController.text = banks[index].code;
    }
  }

  _dynamicNetworkChange(val) {
    if (mtn.contains(val)) {
      _changenetwork(1);
    } else if (voda.contains(val)) {
      _changenetwork(2);
    } else if (airtelTigo.contains(val)) {
      _changenetwork(0);
    } else {
      _changenetwork(-1);
    }
  }

  List<Widget> paymentOptionTiles() {
    List<Widget> tiles = [];

    tiles.add(
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Divider(),
      ),
    );

    for (int i = 0; i < banks.length; i++) {
      tiles.add(
        ListTile(
          leading: Icon(
            Icons.tap_and_play,
            color: Colors.green,
          ),
          title: Text(
            banks[i].name,
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          trailing: Icon(
            Icons.check,
            color: i == currentTile.value ? Colors.green : Colors.transparent,
          ),
          dense: true,
          onTap: () {
            currentTile.value = i;
            widget.networkController.text = banks[i].code;
            Navigator.pop(context);
          },
        ),
      );
    }

    tiles.add(
      SizedBox(height: 20),
    );
    return tiles;
  }

  paymentOptionDialog(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(vertical: 15),
                margin: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: const Text(
                    "Select payment network",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Column(
                children: paymentOptionTiles(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        if (widget.enabled) {
          paymentOptionDialog(context);
        }
      },
      child: Container(
        width: size.width * 0.4,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.green,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FeatherIcons.smartphone,
                color: Colors.green,
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: currentTile,
                  builder: (_, tileIndex, __) => Text(
                    tileIndex as int >= 0 ? banks[tileIndex].name : 'Select',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
