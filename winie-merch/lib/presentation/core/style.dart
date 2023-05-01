import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData style(BuildContext context) {
  return ThemeData(
    accentColor: Color(0XFFCECDCD),
    secondaryHeaderColor: Color(0XFFC4C4C4),
    primaryColor: Color(0XFF67BE5D),
    cardColor: Color(0xffF9F9F9),
    buttonTheme: ButtonThemeData(
      disabledColor: Color(0XFFCECDCD),
      buttonColor: Color(0XFF67BE5D),
    ),
    primarySwatch: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    toggleableActiveColor: Colors.green,
    textTheme: GoogleFonts.mulishTextTheme(),
  );
}
