import 'package:auto_route/auto_route.dart';
import 'package:winie_merch/presentation/pages/account/widgets/bugReport.dart';
import 'package:winie_merch/presentation/pages/account/widgets/profilePage.dart';
import 'package:winie_merch/presentation/pages/account/widgets/suggestToUs.dart';
import 'package:winie_merch/presentation/pages/business/history/historyPage.dart';
import 'package:winie_merch/presentation/pages/business/voucher/addVoucherPage.dart';
import 'package:winie_merch/presentation/pages/business/voucher/voucherPage.dart';
import 'package:winie_merch/presentation/pages/merch/products/productDetailPage.dart';
import 'package:winie_merch/presentation/pages/merch/products/variationDetailPage.dart';
import 'package:winie_merch/presentation/pages/merch/products/productCard.dart';
import 'package:winie_merch/presentation/pages/orders/map/widgets/mapRequest.dart';
import 'package:winie_merch/presentation/pages/orders/map/widgets/mapView.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderDetail.dart';
import 'package:winie_merch/presentation/pages/payment/paymentPage.dart';
import 'package:winie_merch/presentation/pages/settings/addPartnerPage.dart';
import 'package:winie_merch/presentation/pages/settings/joinPartnerPage.dart';
import 'package:winie_merch/presentation/pages/settings/settingsPage.dart';
import 'package:winie_merch/presentation/pages/setup/accountSetup.dart';
import 'package:winie_merch/presentation/pages/auth/authenticationPage.dart';
import 'package:winie_merch/presentation/pages/landing/landingPage.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/cancelOrder.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderView.dart';
import 'package:winie_merch/presentation/pages/onboarding/onboarding.dart';
import 'package:winie_merch/presentation/pages/setup/initialSetup.dart';
import 'package:winie_merch/presentation/pages/splash/splashScreen.dart';
import 'package:winie_merch/presentation/pages/withdrawal/withdrawalPage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(path: '/onboarding', page: OnboardingPage),
    AutoRoute(path: '/auth', page: AuthenticationPage),
    AutoRoute(page: InitialSetup),
    AutoRoute(path: '/setup', page: AccountSetup),
    AutoRoute(path: '/landing', page: LandingPage),
    AutoRoute(page: ProductInfoPage),
    AutoRoute(page: MapRequest),
    AutoRoute(page: MapView),
    AutoRoute(path: '/order-view', page: OrderView),
    AutoRoute(path: '/order-detail', page: OrderDetail),
    AutoRoute(page: AddPartnerPage),
    AutoRoute(page: JoinPartnerPage),
    AutoRoute(page: SettingsPage),
    AutoRoute(page: TransactionHistoryPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: WithdrawalPage),
    AutoRoute(path: '/profile', page: ProfilePage),
    AutoRoute(path: '/cancel', page: CancelPage),
    AutoRoute(path: '/suggest', page: SuggestToUsPage),
    AutoRoute(path: '/bugReport', page: BugReport),
    AutoRoute(page: VoucherPage),
    AutoRoute(page: AddVoucherPage),
    AutoRoute(page: ProductDetailPage),
    AutoRoute(page: VariationDetialPage),
  ],
)
class $AppRouter {}
