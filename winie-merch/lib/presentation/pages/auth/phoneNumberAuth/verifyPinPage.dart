import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:winie_merch/presentation/pages/auth/phoneNumberAuth/widgets/codeField.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';

import 'widgets/codeResend.dart';

class VerifyPinPage extends StatefulWidget {
  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<VerifyPinPage> with TickerProviderStateMixin {
  final _loadingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loadingNotifier.dispose();
    super.dispose();
  }

  load(bool loading) {
    _loadingNotifier.value = loading;
  }

  _error(String failureMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(failureMessage),
      duration: Duration(seconds: 5),
    ));
  }

  void verify(String code) async {
    load(true);

    context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.verificationCodeChanged(code));
    context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.authenticateVerificationCode());
  }

  void _resend() {
    context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.resendAuthenticationCode());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocListener<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) async {
              load(false);
              var message = failure.maybeMap(
                invalideCodeCredential: (_) => "SMS Code is invalid. Try Again",
                tooManyRequests: (_) => "Too Many Requests, Try Again Later",
                operationNotAllowed: (_) => "Operation Not Allowed",
                sessionExpired: (_) => "Session Expired, Resend Code",
                serverError: (_) => "Oops, Network Connection Unstable",
                orElse: () => "Something weng wrong",
              );
              _error(message);
            },
            (auth) async {
              await navigate(context, auth);
            },
          ),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Enter the code",
            style: GoogleFonts.mulish().copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
              ),
              child: Text(
                "Your 6-digit code was sent by SMS to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                context.watch<SignInFormBloc>().state.phoneNumber.getOrCrash(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _loadingNotifier,
              builder: (_, isLoading, __) => CodeField(
                enabled: !(isLoading as bool),
                verifyCode: verify,
              ),
            ),
            Spacer(),
            AvoidKeyboard(
              child: ValueListenableBuilder(
                valueListenable: _loadingNotifier,
                builder: (_, isLoading, __) => isLoading as bool
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: JumpingDotsProgressIndicator(
                          fontSize: 50.0,
                          color: Colors.green,
                        ),
                      )
                    : Container(),
              ),
            ),
            AvoidKeyboard(
              child: CodeResend(
                resendCode: _resend,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
