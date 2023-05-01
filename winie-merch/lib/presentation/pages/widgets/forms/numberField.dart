import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberField extends StatefulWidget {
  final bool enabled;
  final Function(String) changeCountryCode;
  final ValueNotifier countryCodeNotifier;
  final ValueNotifier numberNotifier;

  const NumberField({
    Key? key,
    required this.enabled,
    required this.changeCountryCode,
    required this.countryCodeNotifier,
    required this.numberNotifier,
  }) : super(key: key);

  @override
  _NumberFieldState createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            padding: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: TextField(
              autofocus: true,
              autocorrect: false,
              enabled: widget.enabled,
              keyboardType: TextInputType.number,
              maxLength: 10,
              onChanged: (String value) {
                widget.numberNotifier.value = value.trim();
              },
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Your Phone Number',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                ),
                counterText: "",
                prefixIcon: ValueListenableBuilder(
                  valueListenable: widget.countryCodeNotifier,
                  builder: (_, code, __) => Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CountryListPick(
                        appBar: AppBar(
                          elevation: 0.5,
                          title: Text(
                            'Select Country',
                            style: GoogleFonts.mulish().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: false,
                          isShowCode: true,
                          isDownIcon: true,
                          showEnglishName: true,
                        ),
                        initialSelection: '+233',
                        onChanged: (CountryCode? code) {
                          if (code != null) {
                            widget.changeCountryCode(code.dialCode!);
                          }
                        },
                        useUiOverlay: true,
                        useSafeArea: false,
                      ),
                    ],
                  ),
                ),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
