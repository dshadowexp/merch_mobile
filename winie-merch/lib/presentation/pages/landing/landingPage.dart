import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:winie_merch/infrastructure/dynamic_links/dynamic_links_repository.dart';
import 'package:winie_merch/infrastructure/internal_data/app_rating.dart';
import 'package:winie_merch/infrastructure/notifications/notification_repository.dart';
import 'package:winie_merch/presentation/pages/account/accountPage.dart';
import 'package:winie_merch/presentation/pages/business/businessPage.dart';
import 'package:winie_merch/presentation/pages/orders/ordersPage.dart';
import 'package:winie_merch/presentation/pages/merch/merchPage.dart';
import 'package:winie_merch/presentation/pages/settings/settingsContainer.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../injection.dart';
import 'widgets/bottomNavBar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

final bottomTabNotifier = BottomTabNotifier();

class _LandingPageState extends State<LandingPage> {
  Map<BottomIcon, GlobalKey<NavigatorState>> navigatorKeys = {
    BottomIcon.Shop: GlobalKey<NavigatorState>(),
    BottomIcon.Orders: GlobalKey<NavigatorState>(),
    BottomIcon.Business: GlobalKey<NavigatorState>(),
    BottomIcon.Account: GlobalKey<NavigatorState>(),
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => _onStart(context));
  }

  _onStart(BuildContext context) {
    bottomTabNotifier.updateTab(BottomIcon.Shop);
    AppRating.initialize(context);
    getIt<NotificationRepository>().initialize();
    _appOpenedWithLink(context);
  }

  _appOpenedWithLink(BuildContext context) async {
    DynamicLinksRepository link = DynamicLinksRepository();
    var store = await link.handleDynamicLinks();

    if (store != null && store.runtimeType.toString() == '_\$_Store') {
      AutoRouter.of(context).navigate(
        JoinPartnerRoute(
          store: store!,
          callBack: () {},
        ),
      );
    }
  }

  _updateBottomIcon(BottomIcon icon) {
    if (icon == bottomTabNotifier.currentTab) {
      navigatorKeys[icon]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      bottomTabNotifier.updateTab(icon);
    }
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigatorKeys[bottomTabNotifier.currentTab]!
                .currentState!
                .maybePop();

        if (isFirstRouteInCurrentTab) {
          if (bottomTabNotifier.currentTab != BottomIcon.Shop) {
            _updateBottomIcon(BottomIcon.Shop);
            return false;
          }
        }

        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: AnimatedBuilder(
          animation: bottomTabNotifier,
          builder: (_, __) => BottomNavBar(
            icon: bottomTabNotifier.currentTab,
            changeIcon: _updateBottomIcon,
          ),
        ),
        floatingActionButton: SettingsContainer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: AnimatedBuilder(
          animation: bottomTabNotifier,
          builder: (_, __) => Stack(
            children: [
              VisiblePage(
                isVisible: BottomIcon.Shop == bottomTabNotifier.currentTab,
                navigatorKey: navigatorKeys[BottomIcon.Shop]!,
                page: MerchPage(),
              ),
              VisiblePage(
                isVisible: BottomIcon.Orders == bottomTabNotifier.currentTab,
                navigatorKey: navigatorKeys[BottomIcon.Orders]!,
                page: OrdersPage(),
              ),
              VisiblePage(
                isVisible: BottomIcon.Business == bottomTabNotifier.currentTab,
                navigatorKey: navigatorKeys[BottomIcon.Business]!,
                page: BusinessPage(),
              ),
              VisiblePage(
                isVisible: BottomIcon.Account == bottomTabNotifier.currentTab,
                navigatorKey: navigatorKeys[BottomIcon.Account]!,
                page: AccountPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VisiblePage extends StatelessWidget {
  final Widget page;
  final bool isVisible;
  final GlobalKey<NavigatorState> navigatorKey;

  const VisiblePage({
    Key? key,
    required this.page,
    required this.isVisible,
    required this.navigatorKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      maintainState: true,
      child: Navigator(
        key: navigatorKey,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (_) {
              return page;
            },
          );
        },
      ),
    );
  }
}

class BottomTabNotifier extends ChangeNotifier {
  BottomIcon currentTab = BottomIcon.Shop;

  void updateTab(BottomIcon nextTab) {
    currentTab = nextTab;
    notifyListeners();
  }
}
