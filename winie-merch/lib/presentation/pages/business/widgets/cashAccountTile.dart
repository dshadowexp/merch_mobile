import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';

class CashAccountTile extends StatefulWidget {
  final String accountNumber;
  final String bank;

  const CashAccountTile({
    Key? key,
    required this.accountNumber,
    required this.bank,
  }) : super(key: key);

  @override
  _CashAccountTileState createState() => _CashAccountTileState();
}

class _CashAccountTileState extends State<CashAccountTile> {
  String momoNumber = "";
  final storeManagerRepository = getIt<IStoreManagerRepository>();
  TextEditingController accountNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    momoNumber = widget.accountNumber;
  }

  setPaymentAccount(String field, String newValue) async {
    await storeManagerRepository.updateStore({field: newValue});
  }

  setNumber() async {
    if (validateContactNumber(accountNumberController.text) == null) {
      await setPaymentAccount('merchmomoaccount', accountNumberController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: Icon(
              Icons.account_balance,
              size: 18,
            ),
          ),
          Text(
            'Momo Number',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.accountNumber == "" ? "XXXXXXXXXX" : momoNumber,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

momoNumberDialog(
  BuildContext context,
  TextEditingController contactController,
  Function onClose,
) {
  TextEditingController dummyNumberController = TextEditingController();
  dummyNumberController.text = contactController.text;

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => StatefulBuilder(
      builder: (builder, setState) {
        dummyNumberController.addListener(() {
          setState(() {});
        });
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: Text('Momo Account Number'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Number to cashout sales into',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              TextField(
                autofocus: true,
                autocorrect: false,
                controller: dummyNumberController,
                maxLength: 12,
                decoration: InputDecoration(
                  counterText: '',
                  errorStyle: TextStyle(
                    fontSize: 11,
                    color: Colors.orangeAccent,
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  errorText: validateContactNumber(dummyNumberController.text),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.blue,
              ),
              onPressed: () {
                if (validateContactNumber(dummyNumberController.text) == null) {
                  Navigator.pop(context);
                  contactController.text = dummyNumberController.text;
                  onClose();
                }
              },
            ),
          ],
        );
      },
    ),
  );
}
