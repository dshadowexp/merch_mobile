// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:async' as _i32;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/auth/entities/user.dart' as _i28;
import '../../domain/core/value_objects.dart' as _i35;
import '../../domain/navigation/entities/lat_long.dart' as _i33;
import '../../domain/navigation/entities/trip.dart' as _i31;
import '../../domain/orders/entities/order.dart' as _i30;
import '../../domain/store_manager/entities/product.dart' as _i29;
import '../../domain/store_manager/entities/store.dart' as _i34;
import '../../domain/vouchers/entities/voucher.dart' as _i36;
import '../pages/account/widgets/bugReport.dart' as _i23;
import '../pages/account/widgets/profilePage.dart' as _i20;
import '../pages/account/widgets/suggestToUs.dart' as _i22;
import '../pages/auth/authenticationPage.dart' as _i5;
import '../pages/business/history/historyPage.dart' as _i17;
import '../pages/business/voucher/addVoucherPage.dart' as _i25;
import '../pages/business/voucher/voucherPage.dart' as _i24;
import '../pages/landing/landingPage.dart' as _i8;
import '../pages/merch/products/productCard.dart' as _i9;
import '../pages/merch/products/productDetailPage.dart' as _i26;
import '../pages/merch/products/variationDetailPage.dart' as _i27;
import '../pages/onboarding/onboarding.dart' as _i4;
import '../pages/orders/map/widgets/mapRequest.dart' as _i10;
import '../pages/orders/map/widgets/mapView.dart' as _i11;
import '../pages/orders/widgets/cancelOrder.dart' as _i21;
import '../pages/orders/widgets/orderDetail.dart' as _i13;
import '../pages/orders/widgets/orderView.dart' as _i12;
import '../pages/payment/paymentPage.dart' as _i18;
import '../pages/settings/addPartnerPage.dart' as _i14;
import '../pages/settings/joinPartnerPage.dart' as _i15;
import '../pages/settings/settingsPage.dart' as _i16;
import '../pages/setup/accountSetup.dart' as _i7;
import '../pages/setup/initialSetup.dart' as _i6;
import '../pages/splash/splashScreen.dart' as _i3;
import '../pages/withdrawal/withdrawalPage.dart' as _i19;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    OnboardingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.OnboardingPage();
        }),
    AuthenticationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AuthenticationPage();
        }),
    InitialSetup.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<InitialSetupArgs>();
          return _i6.InitialSetup(key: args.key, userData: args.userData);
        }),
    AccountSetup.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AccountSetupArgs>();
          return _i7.AccountSetup(key: args.key, userData: args.userData);
        }),
    LandingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.LandingPage();
        }),
    ProductInfoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductInfoRouteArgs>();
          return _i9.ProductInfoPage(key: args.key, product: args.product);
        }),
    MapRequest.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MapRequestArgs>();
          return _i10.MapRequest(key: args.key, order: args.order);
        }),
    MapView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MapViewArgs>();
          return _i11.MapView(
              key: args.key,
              trip: args.trip,
              tripStateStream: args.tripStateStream,
              locationStream: args.locationStream);
        }),
    OrderView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderViewArgs>();
          return _i12.OrderView(
              storeOrderId: args.storeOrderId, storeOrder: args.storeOrder);
        }),
    OrderDetail.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderDetailArgs>();
          return _i13.OrderDetail(order: args.order);
        }),
    AddPartnerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddPartnerRouteArgs>();
          return _i14.AddPartnerPage(key: args.key, store: args.store);
        }),
    JoinPartnerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<JoinPartnerRouteArgs>();
          return _i15.JoinPartnerPage(
              key: args.key, store: args.store, callBack: args.callBack);
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SettingsRouteArgs>();
          return _i16.SettingsPage(
              key: args.key, popNavigator: args.popNavigator);
        }),
    TransactionHistoryRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TransactionHistoryRouteArgs>();
          return _i17.TransactionHistoryPage(
              key: args.key, storeId: args.storeId);
        }),
    PaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PaymentRouteArgs>();
          return _i18.PaymentPage(
              key: args.key,
              orderId: args.orderId,
              purpose: args.purpose,
              callBack: args.callBack,
              subTotal: args.subTotal,
              deliveryFee: args.deliveryFee);
        }),
    WithdrawalRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WithdrawalRouteArgs>();
          return _i19.WithdrawalPage(key: args.key, store: args.store);
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i20.ProfilePage();
        }),
    CancelRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CancelRouteArgs>();
          return _i21.CancelPage(storeOrderId: args.storeOrderId);
        }),
    SuggestToUsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i22.SuggestToUsPage();
        }),
    BugReport.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i23.BugReport();
        }),
    VoucherRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VoucherRouteArgs>();
          return _i24.VoucherPage(key: args.key, store: args.store);
        }),
    AddVoucherRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddVoucherRouteArgs>();
          return _i25.AddVoucherPage(
              key: args.key, store: args.store, voucher: args.voucher);
        }),
    ProductDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductDetailRouteArgs>();
          return _i26.ProductDetailPage(
              key: args.key,
              isNew: args.isNew,
              productNotifier: args.productNotifier);
        }),
    VariationDetialRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VariationDetialRouteArgs>();
          return _i27.VariationDetialPage(
              key: args.key,
              isNew: args.isNew,
              productId: args.productId,
              variation: args.variation,
              categoryType: args.categoryType,
              addVariation: args.addVariation);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreen.name, path: '/'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        _i1.RouteConfig(AuthenticationRoute.name, path: '/auth'),
        _i1.RouteConfig(InitialSetup.name, path: '/initial-setup'),
        _i1.RouteConfig(AccountSetup.name, path: '/setup'),
        _i1.RouteConfig(LandingRoute.name, path: '/landing'),
        _i1.RouteConfig(ProductInfoRoute.name, path: '/product-info-page'),
        _i1.RouteConfig(MapRequest.name, path: '/map-request'),
        _i1.RouteConfig(MapView.name, path: '/map-view'),
        _i1.RouteConfig(OrderView.name, path: '/order-view'),
        _i1.RouteConfig(OrderDetail.name, path: '/order-detail'),
        _i1.RouteConfig(AddPartnerRoute.name, path: '/add-partner-page'),
        _i1.RouteConfig(JoinPartnerRoute.name, path: '/join-partner-page'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i1.RouteConfig(TransactionHistoryRoute.name,
            path: '/transaction-history-page'),
        _i1.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i1.RouteConfig(WithdrawalRoute.name, path: '/withdrawal-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile'),
        _i1.RouteConfig(CancelRoute.name, path: '/cancel'),
        _i1.RouteConfig(SuggestToUsRoute.name, path: '/suggest'),
        _i1.RouteConfig(BugReport.name, path: '/bugReport'),
        _i1.RouteConfig(VoucherRoute.name, path: '/voucher-page'),
        _i1.RouteConfig(AddVoucherRoute.name, path: '/add-voucher-page'),
        _i1.RouteConfig(ProductDetailRoute.name, path: '/product-detail-page'),
        _i1.RouteConfig(VariationDetialRoute.name,
            path: '/variation-detial-page')
      ];
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}

class AuthenticationRoute extends _i1.PageRouteInfo {
  const AuthenticationRoute() : super(name, path: '/auth');

  static const String name = 'AuthenticationRoute';
}

class InitialSetup extends _i1.PageRouteInfo<InitialSetupArgs> {
  InitialSetup({_i2.Key? key, required _i28.User userData})
      : super(name,
            path: '/initial-setup',
            args: InitialSetupArgs(key: key, userData: userData));

  static const String name = 'InitialSetup';
}

class InitialSetupArgs {
  const InitialSetupArgs({this.key, required this.userData});

  final _i2.Key? key;

  final _i28.User userData;
}

class AccountSetup extends _i1.PageRouteInfo<AccountSetupArgs> {
  AccountSetup({_i2.Key? key, required _i28.User userData})
      : super(name,
            path: '/setup',
            args: AccountSetupArgs(key: key, userData: userData));

  static const String name = 'AccountSetup';
}

class AccountSetupArgs {
  const AccountSetupArgs({this.key, required this.userData});

  final _i2.Key? key;

  final _i28.User userData;
}

class LandingRoute extends _i1.PageRouteInfo {
  const LandingRoute() : super(name, path: '/landing');

  static const String name = 'LandingRoute';
}

class ProductInfoRoute extends _i1.PageRouteInfo<ProductInfoRouteArgs> {
  ProductInfoRoute({_i2.Key? key, required _i29.Product product})
      : super(name,
            path: '/product-info-page',
            args: ProductInfoRouteArgs(key: key, product: product));

  static const String name = 'ProductInfoRoute';
}

class ProductInfoRouteArgs {
  const ProductInfoRouteArgs({this.key, required this.product});

  final _i2.Key? key;

  final _i29.Product product;
}

class MapRequest extends _i1.PageRouteInfo<MapRequestArgs> {
  MapRequest({_i2.Key? key, required _i30.SaleOrder order})
      : super(name,
            path: '/map-request', args: MapRequestArgs(key: key, order: order));

  static const String name = 'MapRequest';
}

class MapRequestArgs {
  const MapRequestArgs({this.key, required this.order});

  final _i2.Key? key;

  final _i30.SaleOrder order;
}

class MapView extends _i1.PageRouteInfo<MapViewArgs> {
  MapView(
      {_i2.Key? key,
      required _i31.Trip trip,
      required _i32.StreamController<int> tripStateStream,
      required _i32.StreamController<_i33.Coords> locationStream})
      : super(name,
            path: '/map-view',
            args: MapViewArgs(
                key: key,
                trip: trip,
                tripStateStream: tripStateStream,
                locationStream: locationStream));

  static const String name = 'MapView';
}

class MapViewArgs {
  const MapViewArgs(
      {this.key,
      required this.trip,
      required this.tripStateStream,
      required this.locationStream});

  final _i2.Key? key;

  final _i31.Trip trip;

  final _i32.StreamController<int> tripStateStream;

  final _i32.StreamController<_i33.Coords> locationStream;
}

class OrderView extends _i1.PageRouteInfo<OrderViewArgs> {
  OrderView(
      {required String storeOrderId,
      required _i32.Future<_i30.SaleOrder> storeOrder})
      : super(name,
            path: '/order-view',
            args: OrderViewArgs(
                storeOrderId: storeOrderId, storeOrder: storeOrder));

  static const String name = 'OrderView';
}

class OrderViewArgs {
  const OrderViewArgs({required this.storeOrderId, required this.storeOrder});

  final String storeOrderId;

  final _i32.Future<_i30.SaleOrder> storeOrder;
}

class OrderDetail extends _i1.PageRouteInfo<OrderDetailArgs> {
  OrderDetail({required _i30.SaleOrder order})
      : super(name, path: '/order-detail', args: OrderDetailArgs(order: order));

  static const String name = 'OrderDetail';
}

class OrderDetailArgs {
  const OrderDetailArgs({required this.order});

  final _i30.SaleOrder order;
}

class AddPartnerRoute extends _i1.PageRouteInfo<AddPartnerRouteArgs> {
  AddPartnerRoute({_i2.Key? key, required _i34.Store store})
      : super(name,
            path: '/add-partner-page',
            args: AddPartnerRouteArgs(key: key, store: store));

  static const String name = 'AddPartnerRoute';
}

class AddPartnerRouteArgs {
  const AddPartnerRouteArgs({this.key, required this.store});

  final _i2.Key? key;

  final _i34.Store store;
}

class JoinPartnerRoute extends _i1.PageRouteInfo<JoinPartnerRouteArgs> {
  JoinPartnerRoute(
      {_i2.Key? key, required _i34.Store store, required Function callBack})
      : super(name,
            path: '/join-partner-page',
            args: JoinPartnerRouteArgs(
                key: key, store: store, callBack: callBack));

  static const String name = 'JoinPartnerRoute';
}

class JoinPartnerRouteArgs {
  const JoinPartnerRouteArgs(
      {this.key, required this.store, required this.callBack});

  final _i2.Key? key;

  final _i34.Store store;

  final Function callBack;
}

class SettingsRoute extends _i1.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({_i2.Key? key, required Function popNavigator})
      : super(name,
            path: '/settings-page',
            args: SettingsRouteArgs(key: key, popNavigator: popNavigator));

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key, required this.popNavigator});

  final _i2.Key? key;

  final Function popNavigator;
}

class TransactionHistoryRoute
    extends _i1.PageRouteInfo<TransactionHistoryRouteArgs> {
  TransactionHistoryRoute({_i2.Key? key, required String storeId})
      : super(name,
            path: '/transaction-history-page',
            args: TransactionHistoryRouteArgs(key: key, storeId: storeId));

  static const String name = 'TransactionHistoryRoute';
}

class TransactionHistoryRouteArgs {
  const TransactionHistoryRouteArgs({this.key, required this.storeId});

  final _i2.Key? key;

  final String storeId;
}

class PaymentRoute extends _i1.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute(
      {_i2.Key? key,
      required _i35.UniqueId orderId,
      required int purpose,
      required dynamic Function(String) callBack,
      required double subTotal,
      required double deliveryFee})
      : super(name,
            path: '/payment-page',
            args: PaymentRouteArgs(
                key: key,
                orderId: orderId,
                purpose: purpose,
                callBack: callBack,
                subTotal: subTotal,
                deliveryFee: deliveryFee));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs(
      {this.key,
      required this.orderId,
      required this.purpose,
      required this.callBack,
      required this.subTotal,
      required this.deliveryFee});

  final _i2.Key? key;

  final _i35.UniqueId orderId;

  final int purpose;

  final dynamic Function(String) callBack;

  final double subTotal;

  final double deliveryFee;
}

class WithdrawalRoute extends _i1.PageRouteInfo<WithdrawalRouteArgs> {
  WithdrawalRoute({_i2.Key? key, required _i34.Store store})
      : super(name,
            path: '/withdrawal-page',
            args: WithdrawalRouteArgs(key: key, store: store));

  static const String name = 'WithdrawalRoute';
}

class WithdrawalRouteArgs {
  const WithdrawalRouteArgs({this.key, required this.store});

  final _i2.Key? key;

  final _i34.Store store;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile');

  static const String name = 'ProfileRoute';
}

class CancelRoute extends _i1.PageRouteInfo<CancelRouteArgs> {
  CancelRoute({required _i35.UniqueId storeOrderId})
      : super(name,
            path: '/cancel', args: CancelRouteArgs(storeOrderId: storeOrderId));

  static const String name = 'CancelRoute';
}

class CancelRouteArgs {
  const CancelRouteArgs({required this.storeOrderId});

  final _i35.UniqueId storeOrderId;
}

class SuggestToUsRoute extends _i1.PageRouteInfo {
  const SuggestToUsRoute() : super(name, path: '/suggest');

  static const String name = 'SuggestToUsRoute';
}

class BugReport extends _i1.PageRouteInfo {
  const BugReport() : super(name, path: '/bugReport');

  static const String name = 'BugReport';
}

class VoucherRoute extends _i1.PageRouteInfo<VoucherRouteArgs> {
  VoucherRoute({_i2.Key? key, required _i34.Store store})
      : super(name,
            path: '/voucher-page',
            args: VoucherRouteArgs(key: key, store: store));

  static const String name = 'VoucherRoute';
}

class VoucherRouteArgs {
  const VoucherRouteArgs({this.key, required this.store});

  final _i2.Key? key;

  final _i34.Store store;
}

class AddVoucherRoute extends _i1.PageRouteInfo<AddVoucherRouteArgs> {
  AddVoucherRoute(
      {_i2.Key? key, required _i34.Store store, _i36.Voucher? voucher})
      : super(name,
            path: '/add-voucher-page',
            args:
                AddVoucherRouteArgs(key: key, store: store, voucher: voucher));

  static const String name = 'AddVoucherRoute';
}

class AddVoucherRouteArgs {
  const AddVoucherRouteArgs({this.key, required this.store, this.voucher});

  final _i2.Key? key;

  final _i34.Store store;

  final _i36.Voucher? voucher;
}

class ProductDetailRoute extends _i1.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute(
      {_i2.Key? key,
      required bool isNew,
      required _i2.ValueNotifier<_i29.Product> productNotifier})
      : super(name,
            path: '/product-detail-page',
            args: ProductDetailRouteArgs(
                key: key, isNew: isNew, productNotifier: productNotifier));

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs(
      {this.key, required this.isNew, required this.productNotifier});

  final _i2.Key? key;

  final bool isNew;

  final _i2.ValueNotifier<_i29.Product> productNotifier;
}

class VariationDetialRoute extends _i1.PageRouteInfo<VariationDetialRouteArgs> {
  VariationDetialRoute(
      {_i2.Key? key,
      required bool isNew,
      required _i35.UniqueId productId,
      required _i2.ValueNotifier<_i29.Variation> variation,
      required Map<dynamic, dynamic> categoryType,
      dynamic Function(_i29.Variation)? addVariation})
      : super(name,
            path: '/variation-detial-page',
            args: VariationDetialRouteArgs(
                key: key,
                isNew: isNew,
                productId: productId,
                variation: variation,
                categoryType: categoryType,
                addVariation: addVariation));

  static const String name = 'VariationDetialRoute';
}

class VariationDetialRouteArgs {
  const VariationDetialRouteArgs(
      {this.key,
      required this.isNew,
      required this.productId,
      required this.variation,
      required this.categoryType,
      this.addVariation});

  final _i2.Key? key;

  final bool isNew;

  final _i35.UniqueId productId;

  final _i2.ValueNotifier<_i29.Variation> variation;

  final Map<dynamic, dynamic> categoryType;

  final dynamic Function(_i29.Variation)? addVariation;
}
