import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:winie_merch/presentation/pages/auth/phoneNumberAuth/verifyPinPage.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/numberField.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/authButton.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';
import 'package:winie_merch/presentation/pages/widgets/slideRoutes.dart';

class VerifyPhonePage extends StatefulWidget {
  @override
  _VerifyPhonePageState createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  final _loadingNotifier = ValueNotifier<bool>(false);
  final numberNotifier = ValueNotifier<String>("");
  final countryCodeNotifier = ValueNotifier<String>("+233");

  @override
  void initState() {
    super.initState();
    context.read<SignInFormBloc>().add(
      SignInFormEvent.setErrorFunction(
        (String message) {
          if (this.mounted) {
            _loadingNotifier.value = false;
            _error(message);
          }
        },
      ),
    );

    context.read<SignInFormBloc>().add(
      SignInFormEvent.setSuccessFunction(() async {
        _loadingNotifier.value = false;
        await Navigator.push(
          context,
          SlideLeftRoute(
            page: VerifyPinPage(),
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    numberNotifier.dispose();
    countryCodeNotifier.dispose();
    _loadingNotifier.dispose();
    super.dispose();
  }

  _error(String failureMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(failureMessage),
      duration: Duration(seconds: 5),
    ));
  }

  Future changeCountryCode(String code) async {
    countryCodeNotifier.value = code;
    context.read<SignInFormBloc>().add(SignInFormEvent.phoneNumberChanged(
        countryCodeNotifier.value + numberNotifier.value));
  }

  void next() {
    _loadingNotifier.value = true;
    context.read<SignInFormBloc>().add(SignInFormEvent.phoneNumberChanged(
        countryCodeNotifier.value + numberNotifier.value));
    context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.verifyPhoneNumberPressed());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            if (!_loadingNotifier.value) {
              Navigator.pop(context);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Enter your phone number",
          style: GoogleFonts.mulish().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ValueListenableBuilder(
            valueListenable: _loadingNotifier,
            builder: (_, loading, __) => NumberField(
              enabled: !(loading as bool),
              numberNotifier: numberNotifier,
              countryCodeNotifier: countryCodeNotifier,
              changeCountryCode: changeCountryCode,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 5,
            ),
            child: Text(
              'We will send a verification code to your phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF555555),
                fontSize: 15,
              ),
            ),
          ),
          Spacer(),
          ValueListenableBuilder(
            valueListenable: _loadingNotifier,
            builder: (_, loading, __) => ValueListenableBuilder(
              valueListenable: numberNotifier,
              builder: (_, number, __) => AvoidKeyboard(
                child: AuthButton(
                  buttonText: 'Continue',
                  isActive:
                      ((number as String).length >= 9) && !(loading as bool),
                  isLoading: loading as bool,
                  onPressedFunc: next,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
