import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/auth/phoneNumberAuth/verifyPhonePage.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/mediaAuthButton.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/termsText.dart';
import 'package:winie_merch/presentation/pages/widgets/slideRoutes.dart';
import 'widgets/or.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  IAuthRepository _authRepository = getIt<IAuthRepository>();
  final _loadingNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _loadingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 20,
              ),
              child: Text(
                'Winie Merch',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF48A14D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            MediaAuthButton(
              mediaIcon: Icon(
                Icons.perm_phone_msg,
                color: Colors.green,
              ),
              mediaName: "Phone Number",
              mediaColor: Colors.green,
              callFunction: () async {
                if (!_loadingNotifier.value) {
                  await Navigator.push(
                    context,
                    SlideLeftRoute(
                      page: VerifyPhonePage(),
                    ),
                  );
                }
              },
            ),
            Or(),
            if (Platform.isIOS) ...[
              MediaAuthButton(
                mediaIcon: FaIcon(
                  FontAwesomeIcons.apple,
                  color: Color(0XFF000000),
                ),
                mediaName: "Apple",
                mediaColor: Color(0XFF000000),
                callFunction: () async {
                  if (!_loadingNotifier.value) {
                    _loadingNotifier.value = true;

                    final facebookauthresponse =
                        await _authRepository.signInWithApple();
                    facebookauthresponse.fold(
                      (l) {
                        _loadingNotifier.value = false;
                      },
                      (r) async {
                        await navigate(context, r);
                      },
                    );
                  }
                },
              ),
            ],
            MediaAuthButton(
              mediaIcon: FaIcon(
                FontAwesomeIcons.google,
                color: Color(0XFFDB4437),
              ),
              mediaName: "Google",
              mediaColor: Color(0XFFDB4437),
              callFunction: () async {
                if (!_loadingNotifier.value) {
                  _loadingNotifier.value = true;

                  final facebookauthresponse =
                      await _authRepository.signInWithGoogle();
                  facebookauthresponse.fold(
                    (l) {
                      _loadingNotifier.value = false;
                    },
                    (r) async {
                      await navigate(context, r);
                    },
                  );
                }
              },
            ),
            Spacer(),
            ValueListenableBuilder(
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
            TermsText(),
          ],
        ),
      ),
    );
  }
}
