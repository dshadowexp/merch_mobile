import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsText extends StatelessWidget {
  const TermsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "By creating a new account, our ",
            style: GoogleFonts.mulish().copyWith(
              color: Color(0XFF555555),
              fontSize: 13,
            ),
            children: [
              TextSpan(
                text: "Terms & Conditions",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://winie.io/privacy-terms');
                  },
              ),
              TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://winie.io/privacy-terms');
                  },
              ),
              TextSpan(text: " apply to you. "),
              TextSpan(text: "You can equally change your "),
              TextSpan(
                text: "communication preferences",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://winie.io/privacy-terms');
                  },
              ),
              TextSpan(text: "."),
            ],
          ),
        ),
      ),
    );
  }
}
