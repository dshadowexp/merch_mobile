import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';

import 'bugReport.dart';

class SuggestToUsPage extends StatefulWidget {
  @override
  _SuggestToUsPageState createState() => _SuggestToUsPageState();
}

class _SuggestToUsPageState extends State<SuggestToUsPage> {
  final suggestTextNotifier = ValueNotifier<String>("");

  @override
  void dispose() {
    suggestTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Suggest to Us',
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
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  'Winie really values your experience and input. Tell us what we should do better and suggest what new things we can include.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
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
                maxLines: 6,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tell us what we can do better to serve you better',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black38,
                  ),
                ),
                onChanged: (val) {
                  suggestTextNotifier.value = val;
                },
              ),
            ),
            Spacer(),
            AvoidKeyboard(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: 8.0,
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ValueListenableBuilder(
                          valueListenable: suggestTextNotifier,
                          builder: (_, value, __) => TextButtonTheme(
                            data: TextButtonThemeData(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  (value as String).isEmpty
                                      ? Colors.transparent
                                      : Color(0xFF48A14D),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                  Size(double.infinity, 60),
                                ),
                                shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  ),
                                ),
                              ),
                            ),
                            child: TextButton(
                              onPressed: value.isEmpty
                                  ? null
                                  : () async {
                                      var idRepo = getIt<IIdentityRepository>();
                                      await showAsyncReportDialog(
                                        context,
                                        () async {
                                          await idRepo.suggestToUs(value);
                                        },
                                      );

                                      Navigator.pop(context);
                                    },
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 21.0,
                                  fontWeight: FontWeight.bold,
                                  color: value.isEmpty
                                      ? Colors.grey
                                      : Colors.white,
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
            ),
          ],
        ),
      ),
    );
  }
}
