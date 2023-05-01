import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';

class BugReport extends StatefulWidget {
  @override
  _BugReportState createState() => _BugReportState();
}

class _BugReportState extends State<BugReport> {
  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Issue',
          style: GoogleFonts.mulish().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: bottomPadding + 8),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Where in the app did you run into this issue?',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              BugTile(
                icon: FeatherIcons.archive,
                text: 'products View',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.shoppingCart,
                text: 'orders',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.creditCard,
                text: 'withdrawal',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.activity,
                text: 'history',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.gift,
                text: 'vouchers',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.bell,
                text: 'notifications',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.truck,
                text: 'delivery & Tracking',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.mapPin,
                text: 'location | Addresses',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.helpCircle,
                text: 'Support',
                close: () => Navigator.pop(context),
              ),
              BugTile(
                icon: FeatherIcons.logIn,
                text: 'signup | Login',
                close: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReportPage extends StatefulWidget {
  final String? issue;
  final IconData? icon;
  final Function()? close;
  final Function(String, String)? callBack;

  const _ReportPage({
    Key? key,
    this.issue,
    this.close,
    this.icon,
    this.callBack,
  }) : super(key: key);

  @override
  __ReportPageState createState() => __ReportPageState();
}

class __ReportPageState extends State<_ReportPage> {
  final issueTextNotifier = ValueNotifier<String>("");
  final filePathNotifier = ValueNotifier<String>("");

  @override
  void dispose() {
    issueTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            widget.icon,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.close,
              ),
              onPressed: () {
                widget.close!();
              },
            ),
          ],
          title: Text(
            '${widget.issue!.capitalizeFirstofEach} Issue',
            style: GoogleFonts.mulish().copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Winie really values your experience and input. To help fix this issue faster, we collect extra personal information like your device OS type.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: TextField(
                autocorrect: true,
                maxLines: 5,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      'Tell us what happened - the more detail the better',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black38,
                  ),
                ),
                onChanged: (val) {
                  issueTextNotifier.value = val;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 15,
                left: 15,
                top: 10,
                bottom: 10,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  attachmentDialog(
                    context,
                    () async {
                      final pickedFile = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);

                      filePathNotifier.value = pickedFile!.path;
                    },
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FeatherIcons.maximize,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ValueListenableBuilder(
                        valueListenable: filePathNotifier,
                        builder: (_, value, __) => Text(
                          (value as String).isEmpty
                              ? "Add an attachment"
                              : "Change attachment",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            AvoidKeyboard(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: bottomPadding + 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: issueTextNotifier,
                        builder: (_, value, __) => ButtonTheme(
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(double.infinity, 60),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                (value as String).isEmpty
                                    ? Colors.transparent
                                    : Color(0xFF48A14D),
                              ),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: value.isEmpty
                                ? null
                                : () async {
                                    await widget.callBack!(
                                        value, filePathNotifier.value);
                                  },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color:
                                    value.isEmpty ? Colors.grey : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BugTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function close;

  const BugTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.close,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      openColor: Colors.white,
      closedColor: Colors.white,
      closedBuilder: (context, openBuilder) {
        return Container(
          margin: const EdgeInsets.only(
            right: 15,
            left: 15,
            bottom: 10,
          ),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  text.capitalizeFirstofEach,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      openBuilder: (context, closeBuilder) {
        return _ReportPage(
          icon: icon,
          issue: text,
          close: closeBuilder,
          callBack: (String description, String filePath) async {
            final idRepo = getIt<IIdentityRepository>();
            await showAsyncReportDialog(
              context,
              () async {
                await idRepo.submitBugReport(text, description, filePath);
              },
            );
            close();
          },
        );
      },
    );
  }
}

attachmentDialog(
  BuildContext context,
  Function onClose,
) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => StatefulBuilder(
      builder: (builder, setState) {
        return AlertDialog(
          titlePadding: const EdgeInsets.only(top: 15),
          contentPadding: const EdgeInsets.only(
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
            child: const Text(
              'Add Attachment',
              textAlign: TextAlign.center,
              style: const TextStyle(
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
                child: const Text(
                  'Share a screenshot for a little more context',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: const Text(
                      'Add Screenshot',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                      await onClose();
                    },
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  child: const Text(
                    'Cancel',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

showAsyncReportDialog(BuildContext context, Function asyncFunction) async {
  Future<dynamic> funcResponse = asyncFunction();
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          'Loading',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FutureBuilder(
            future: funcResponse,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                    strokeWidth: 3.0,
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.check,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    )
                  ],
                );
              } else {
                return Column(
                  children: [
                    Text(
                      'Please try again',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    )
                  ],
                );
              }
            },
          ),
        ],
      ),
    ),
  );
}
