import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:winie_merch/presentation/pages/settings/settingsFab.dart';

import 'settingsPage.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedBuilder: (context, openContainer) {
        return SettingsFab(
          openSettingsContainer: openContainer,
        );
      },
      openBuilder: (context, closeBuilder) {
        return SettingsPage(
          popNavigator: closeBuilder,
        );
      },
      closedColor: Colors.transparent,
      openColor: Colors.white,
      closedElevation: 3,
      openElevation: 0,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      openShape: RoundedRectangleBorder(),
      transitionDuration: Duration(milliseconds: 500),
      transitionType: ContainerTransitionType.fadeThrough,
    );
  }
}
