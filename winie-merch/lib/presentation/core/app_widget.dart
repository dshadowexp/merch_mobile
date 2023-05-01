import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:winie_merch/application/auth/auth_flow/auth_flow_bloc.dart';
import 'package:winie_merch/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:winie_merch/application/identity/identity_bloc.dart';
import 'package:winie_merch/application/orders/orders_bloc.dart';
import 'package:winie_merch/application/orders/s_order/s_order_bloc.dart';
import 'package:winie_merch/application/store_manager/product/product_bloc.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';
import 'package:winie_merch/application/transaction/transaction_bloc.dart';
import 'package:winie_merch/application/trip/trip_bloc.dart';
import 'package:winie_merch/infrastructure/core/app_localizations.dart';
import 'package:winie_merch/injection.dart';

import 'package:winie_merch/presentation/core/style.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

final appRouter = AppRouter();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthFlowBloc>()),
        BlocProvider(create: (context) => getIt<IdentityBloc>()),
        BlocProvider(create: (context) => getIt<SignInFormBloc>()),
        BlocProvider(create: (context) => getIt<OrdersBloc>()),
        BlocProvider(create: (context) => getIt<SOrderBloc>()),
        BlocProvider(create: (context) => getIt<TransactionBloc>()),
        BlocProvider(create: (context) => getIt<StoreBloc>()),
        BlocProvider(create: (context) => getIt<ProductBloc>()),
        BlocProvider(create: (context) => getIt<TripBloc>()),
      ],
      child: MaterialApp.router(
        title: "Winie Merch",
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: style(context),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('fr', 'FR'),
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
