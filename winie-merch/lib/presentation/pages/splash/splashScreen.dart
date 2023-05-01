import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winie_merch/application/auth/auth_flow/auth_flow_bloc.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  IStoreManagerRepository storeRepo = getIt<IStoreManagerRepository>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => _onStart(context));
  }

  _onStart(BuildContext context) {
    context.read<AuthFlowBloc>().add(AuthFlowEvent.authCheckRequested());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) =>
          getIt<AuthFlowBloc>()..add(AuthFlowEvent.authCheckRequested()),
      child: BlocListener<AuthFlowBloc, AuthFlowState>(
        listener: (context, state) async {
          state.map(
            initial: (_) {},
            authenticated: (auth) async {
              await navigate(context, auth.user);
            },
            unauthenticated: (_) async {
              await Future.delayed(Duration(seconds: 1));
              await AutoRouter.of(context).pushAndPopUntil(
                OnboardingRoute(),
                predicate: (Route<dynamic> route) => false,
              );
            },
          );
        },
        child: Scaffold(
          backgroundColor: Color(0XFF48A14D),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      "assets/images/newLogo.svg",
                      color: Colors.white,
                      height: size.height * 0.12,
                      width: size.height * 0.12,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    "Winie Merch",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  JumpingDotsProgressIndicator(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
