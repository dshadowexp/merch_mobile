import 'package:flutter/material.dart';

variationDialog(
  BuildContext context,
  String field,
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
          title: Text(
            'Variation Update',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Update $field',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              TextField(
                autofocus: true,
                autocorrect: false,
                textAlign: TextAlign.center,
                controller: dummyNumberController,
                maxLength: 12,
                keyboardType: TextInputType.number,
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
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        color: Colors.green,
                      ),
                      onPressed: () {
                        if (dummyNumberController.text.isNotEmpty &&
                            dummyNumberController.text !=
                                contactController.text) {
                          contactController.text = dummyNumberController.text;
                          onClose();
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
