import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/imageField.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';

class PersonalData extends StatefulWidget {
  final Map<String, dynamic> savedData;
  final Function(Map) data;

  const PersonalData({
    Key? key,
    required this.data,
    required this.savedData,
  }) : super(key: key);

  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  final fname = ValueNotifier<String>('');
  final email = ValueNotifier<String>('');
  final number = ValueNotifier<String>('');
  final picturePathNotifier = ValueNotifier<String>("");

  @override
  void initState() {
    super.initState();
    if (widget.savedData.containsKey("userName")) {
      fname.value = widget.savedData["userName"];
    }

    if (widget.savedData.containsKey("photo")) {
      picturePathNotifier.value = widget.savedData["photo"];
    }

    if (widget.savedData.containsKey("phoneNumber")) {
      number.value = widget.savedData["phoneNumber"];
    }

    if (widget.savedData.containsKey("email")) {
      email.value = widget.savedData["email"];
    }
  }

  @override
  void dispose() {
    picturePathNotifier.dispose();
    fname.dispose();
    email.dispose();
    number.dispose();
    super.dispose();
  }

  getImage(String path) {
    picturePathNotifier.value = path;
    widget.data({
      "photo": picturePathNotifier.value,
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            child: Text(
              "Your personal data will be used as points of contact and identity as a shop owner",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: picturePathNotifier,
            builder: (_, photoPath, __) => ImageField(
              setIdentityImage: getImage,
              imageLink: (photoPath as String).isEmpty ? null : photoPath,
            ),
          ),
          SizedBox(height: 10),
          SetupForms(
            notifier: fname,
            description: "Your full name",
            icon: FeatherIcons.user,
            onChange: (val) {
              fname.value = val!;
              widget.data({
                "userName": fname.value.trim(),
              });
            },
          ),
          SetupForms(
            notifier: email,
            inputType: TextInputType.emailAddress,
            description: "Your email",
            icon: FeatherIcons.mail,
            validation: validateEmail,
            onChange: (val) {
              email.value = val!;
              widget.data({
                "email": email.value.trim(),
              });
            },
          ),
          SetupForms(
            notifier: number,
            inputType: TextInputType.number,
            description: "Your phone number",
            icon: FeatherIcons.phone,
            validation: validateContactNumber,
            onChange: (val) {
              number.value = val!;
              widget.data({
                "phoneNumber": number.value.trim(),
              });
            },
          ),
        ],
      ),
    );
  }
}
