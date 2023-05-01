import 'package:flutter/material.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/networkOptions.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/paymentNumberField.dart';

class PaymentData extends StatefulWidget {
  final Map<String, dynamic> savedData;
  final Function(Map) data;

  PaymentData({
    Key? key,
    required this.data,
    required this.savedData,
  }) : super(key: key);

  @override
  _PaymentDataState createState() => _PaymentDataState();
}

class _PaymentDataState extends State<PaymentData> {
  TextEditingController network = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  void dispose() {
    number.dispose();
    network.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.savedData.containsKey("momoNumber")) {
      number.text = widget.savedData["momoNumber"];
    }
    if (widget.savedData.containsKey("network")) {
      network.text = widget.savedData["network"];
    }

    number.addListener(() {
      widget.savedData["momoNumber"] = number.text;
    });

    network.addListener(() {
      widget.savedData["network"] = network.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            child: Text(
              "Your mobile money number will be used to send payments to you. Currently, Winie only pays out to Momo Accounts on all networks [MTN, Vodafone, AirtelTigo]",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Column(
              children: [
                PaymentNumberField(
                  numberController: number,
                  enabled: true,
                ),
                NetworkOptions(
                  accountNumberController: number,
                  network: network,
                  enabled: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
