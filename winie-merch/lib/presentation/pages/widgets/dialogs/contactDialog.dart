import 'package:flutter/material.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';

contactDialog(
  BuildContext context,
  String title,
  String description,
  bool isContact,
  Function(String)? validation,
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
          titlePadding: EdgeInsets.only(top: 15),
          contentPadding: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 10,
            bottom: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                autocorrect: false,
                keyboardType:
                    isContact ? TextInputType.number : TextInputType.name,
                controller: dummyNumberController,
                textAlign: TextAlign.center,
                maxLength: isContact ? 12 : 35,
                decoration: InputDecoration(
                  counterText: '',
                  errorStyle: TextStyle(
                    fontSize: 11,
                    color: Colors.orangeAccent,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  errorText: validation != null
                      ? validation(dummyNumberController.text)
                      : null,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15,
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15,
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.teal,
                        ),
                      ),
                      onTap: () {
                        if (isContact) {
                          if (validateContactNumber(
                                  dummyNumberController.text) !=
                              null) {
                            return;
                          }
                        }
                        contactController.text = dummyNumberController.text;
                        Navigator.pop(context);
                        onClose();
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
