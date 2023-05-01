import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../injection.dart';

class InitialSetup extends StatefulWidget {
  final User userData;

  const InitialSetup({
    Key? key,
    required this.userData,
  }) : super(key: key);

  @override
  _InitialSetupState createState() => _InitialSetupState();
}

class _InitialSetupState extends State<InitialSetup> {
  @override
  void initState() {
    super.initState();
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
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(),
          centerTitle: true,
          title: Text(
            "Winie Merch",
            style: GoogleFonts.mulish().copyWith(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Select setup option",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InitCard(
                    text: "Create your shop",
                    icon: FeatherIcons.home,
                    color: Colors.green,
                    action: () async {
                      await AutoRouter.of(context).navigate(
                        AccountSetup(userData: widget.userData),
                      );
                    },
                  ),
                ],
              ),
              Spacer(),
              SafeArea(
                child: InkWell(
                  onTap: () {
                    question(
                      context,
                      "Change Account",
                      "Do you want to sign in with a different account?",
                      (answer) async {
                        if (answer) {
                          final authRepo = getIt<IAuthRepository>();
                          await authRepo.signOut();
                          AutoRouter.of(context).pushAndPopUntil(
                            AuthenticationRoute(),
                            predicate: (Route<dynamic> route) => false,
                          );
                        }
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Change Sign In',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InitCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Function action;

  const InitCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await action();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                icon,
                color: color,
                size: 30,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
