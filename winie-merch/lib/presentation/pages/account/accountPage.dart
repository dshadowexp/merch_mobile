import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:winie_merch/presentation/pages/account/widgets/accountTile.dart';
import 'package:winie_merch/presentation/pages/account/widgets/from.dart';
import 'package:winie_merch/presentation/pages/account/widgets/profilePage.dart';
import 'package:winie_merch/presentation/pages/account/widgets/sectionTile.dart';
import 'package:winie_merch/presentation/pages/account/widgets/socialMedia.dart';
import 'package:winie_merch/presentation/pages/account/widgets/winieCard.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({
    Key? key,
  }) : super(key: key);
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  launchFunction(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  void share(BuildContext context, text) {
    Share.share(
      text,
      subject: "Invitation to sell on Winie Merch",
    );
  }

  String appLink() {
    return "https://winieapp.page.link/merch";
  }

  String merchAppLink() {
    if (Platform.isAndroid) {
      return 'https://play.google.com/store/apps/details?id=com.winie.merch';
    } else {
      return 'https://apps.apple.com/us/app/winie-merch/id1538654071';
    }
  }

  String delveAppLink() {
    return "https://winiedelve.page.link/XktS";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: GoogleFonts.mulish().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          SectionTitle(
            icon: Icons.engineering,
            sectionTitle: 'Profile',
          ),
          ProfileCard(),
          SizedBox(
            height: size.height * 0.02,
          ),
          SectionTitle(
            icon: Icons.domain,
            sectionTitle: 'Business',
          ),
          WinieCard(
            image1: 'assets/images/deliveryMotor.png',
            image2: 'assets/images/deliveryCar.png',
            image3: 'assets/images/deliveryVan.png',
            title: 'Become a rider',
            message: 'Earn money delivering on your schedule',
            color: Color(0xFF171717),
            urlCall: () async {
              String url = delveAppLink();
              await launchFunction(url);
            },
          ),
          SectionTitle(
            icon: Icons.bubble_chart,
            sectionTitle: 'Account',
          ),
          AccountTile(
            actionText: 'Contact us',
            icon: FeatherIcons.phoneCall,
            actionFunction: () async {
              await launchFunction("tel:0302728284");
            },
          ),
          AccountTile(
            actionText: 'Invite to Winie',
            icon: FeatherIcons.share2,
            actionFunction: () {
              share(
                context,
                "Double your sales and earn more money on the platform that cares about your business ${appLink()}",
              );
            },
          ),
          AccountTile(
            actionText: 'Report an issue',
            icon: Icons.bug_report_outlined,
            actionFunction: () {
              AutoRouter.of(context).push(BugReport());
            },
          ),
          AccountTile(
            actionText: 'Suggest to us',
            icon: Icons.sentiment_very_satisfied,
            actionFunction: () async {
              AutoRouter.of(context).push(SuggestToUsRoute());
            },
          ),
          AccountTile(
            actionText: 'Rate this app',
            icon: FeatherIcons.star,
            actionFunction: () async {
              String url = merchAppLink();
              await launchFunction(url);
            },
          ),
          AccountTile(
            actionText: 'Visit Webpage',
            icon: FeatherIcons.globe,
            actionFunction: () async {
              String url = "https://winie.io";
              await launchFunction(url);
            },
          ),
          SizedBox(height: 5),
          SocialMedia(),
          From(),
        ],
      ),
    );
  }
}
