import 'package:flutter/material.dart';
import 'package:winie_merch/presentation/pages/payment/widgets/networkDialog.dart';

class NetworkOptions extends StatelessWidget {
  final TextEditingController network;
  final TextEditingController accountNumberController;
  final bool enabled;

  const NetworkOptions({
    Key? key,
    required this.accountNumberController,
    required this.network,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  'Network:',
                ),
              ),
              NetworkDialog(
                accountNumberController: accountNumberController,
                networkController: network,
                enabled: enabled,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
