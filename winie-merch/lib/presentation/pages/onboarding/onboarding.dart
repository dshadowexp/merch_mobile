import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  void _onDone(BuildContext context) {
    AutoRouter.of(context).navigate(
      AuthenticationRoute(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      titlePadding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 25,
      ),
      descriptionPadding: EdgeInsets.zero,
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return WillPopScope(
      onWillPop: () async {
        // since screen is an initial screen returning to
        // previous screen has been disabled
        return false;
      },
      child: IntroductionScreen(
        key: introKey,
        isBottomSafeArea: true,
        globalBackgroundColor: Colors.white,
        globalHeader: Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: _buildImage(
                'wordLogo.png',
                100,
              ),
            ),
          ),
        ),
        globalFooter: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: SafeArea(
            child: TextButton(
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF48A14D),
                ),
              ),
              onPressed: () {
                _onDone(context);
              },
            ),
          ),
        ),
        pages: [
          PageViewModel(
            title: "Sell your products from anywhere",
            image: _buildImage(
              'online_shopping.png',
              size.width * 0.8,
            ),
            body: '',
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Find riders to deliver with ease",
            image: _buildImage(
              'easy_delivery.png',
              size.width * 0.8,
            ),
            body: '',
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Receive and manage finances easily",
            image: _buildImage(
              'store_growth.png',
              size.width * 0.8,
            ),
            body: '',
            decoration: pageDecoration,
          ),
        ],
        showNextButton: false,
        showSkipButton: false,
        showDoneButton: false,
        skipFlex: 0,
        nextFlex: 0,
        done: const Text(
          'Done',
          style: TextStyle(
            color: Color(0xFF48A14D),
            fontWeight: FontWeight.w600,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeColor: Color(0xFF48A14D),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
