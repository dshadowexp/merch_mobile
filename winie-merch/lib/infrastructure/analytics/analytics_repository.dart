import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class AnalyticsRepository {
  static FirebaseAnalytics _analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: _analytics);

  static Future<void> logAppOpen() async {
    await _analytics.logAppOpen();
  }

  static Future<void> setUserId(String userId) async {
    await _analytics.setUserId(userId);
    await _analytics.setUserProperty(name: 'user_role', value: 'merchant');
  }

  static Future<void> logLogin() async {
    await _analytics.logLogin();
  }
}
