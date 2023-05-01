import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class AppRating {
  static void initialize(BuildContext context) {
    final _appRating = RateMyApp(
      preferencesPrefix: 'rateWinieMerchApp_',
      minDays: 3,
      minLaunches: 7,
      remindDays: 3,
      remindLaunches: 5,
    );

    _appRating.init().then(
      (_) {
        if (_appRating.shouldOpenDialog) {
          _appRating.showStarRateDialog(
            context,
            title: 'Enjoying Winie Merch?',
            message:
                'If you love using our app, please take a moment to rate it',
            actionsBuilder: (context, stars) {
              return [
                FlatButton(
                  child: Text('OK'),
                  onPressed: () async {
                    if (stars != null) {
                      await _appRating
                          .callEvent(RateMyAppEventType.rateButtonPressed);
                      _appRating.save().then((v) => Navigator.pop(context));
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
              ];
            },
            onDismissed: () =>
                _appRating.callEvent(RateMyAppEventType.laterButtonPressed),
            ignoreNativeDialog: Platform.isAndroid,
            dialogStyle: DialogStyle(
              titleAlign: TextAlign.center,
              messageAlign: TextAlign.center,
              messagePadding: EdgeInsets.only(
                bottom: 20.0,
              ),
            ),
            starRatingOptions: StarRatingOptions(),
          );
        }
      },
    );
  }
}
