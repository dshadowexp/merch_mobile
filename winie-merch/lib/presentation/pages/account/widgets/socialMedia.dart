import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MediaIcon(
          icon: FeatherIcons.twitter,
          color: Colors.lightBlue,
          url: 'https://twitter.com/winie_ghana?s=11',
        ),
        MediaIcon(
          icon: FeatherIcons.instagram,
          color: Colors.red,
          url: 'https://www.instagram.com/winie_ghana/',
        ),
        MediaIcon(
          icon: FeatherIcons.linkedin,
          color: Colors.blueAccent,
          url: 'https://gh.linkedin.com/company/winie-inc',
        ),
        MediaIcon(
          icon: FeatherIcons.facebook,
          color: Colors.blue,
          url: 'https://web.facebook.com/winie.inc/',
        ),
      ],
    );
  }
}

class MediaIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String url;

  const MediaIcon({
    Key? key,
    required this.color,
    required this.icon,
    required this.url,
  }) : super(key: key);

  launchFunction(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 18,
        color: color,
      ),
      onPressed: () async {
        await launchFunction(url);
      },
    );
  }
}
