import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:winie_merch/domain/orders/entities/order.dart';
import 'package:winie_merch/domain/orders/i_order_repository.dart';
import 'package:winie_merch/infrastructure/core/firestore_helpers.dart';
import 'package:winie_merch/infrastructure/notifications/notification_dto.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/core/app_widget.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

@injectable
class NotificationRepository {
  final notificationChannel = "Notification channel";
  final notificationChannelId = "Channel_id_1";
  final notificationChannelDescription = "Notification channel description";

  final FirebaseFirestore _firestore;
  final FirebaseMessaging _fcm;
  FlutterLocalNotificationsPlugin? _ln;

  static int notificationId = 0;

  bool _hasLaunched = false;
  IOrderRepository orderRepository = getIt<IOrderRepository>();

  NotificationRepository(this._fcm, this._firestore);

  Future<void> initialize() async {
    _ln = FlutterLocalNotificationsPlugin();
    NotificationAppLaunchDetails? _appLaunchDetails =
        await _ln!.getNotificationAppLaunchDetails();

    var initializationSettings = _getPlatformSettings();
    await _ln!.initialize(initializationSettings,
        onSelectNotification: handleNotificationTap);

    _createNotificationChannel();
    if (Platform.isIOS) {
      bool? hasPermission = await _requestIOSPermissions();

      if (hasPermission!) {
        await fcmInitialization();
      } else {}
    } else {
      await fcmInitialization();
    }

    _hasLaunched = _appLaunchDetails!.didNotificationLaunchApp;
    if (_hasLaunched) {
      if (_appLaunchDetails.payload != null) {}
    }
  }

  Future<dynamic> handleNotificationTap(String? payload) async {
    if (payload != null) {
      final jPayload = json.decode(payload);
      var notDTO = NotificationDTO.fromJson(jPayload);
      if (notDTO != null && notDTO.notificationData.isNotEmpty) {
        var data = notDTO.notificationData;
        if (data['type'] == 'storeOrder') {
          var orderId = data['id'];
          if (orderId != null && orderId.isNotEmpty) {
            Future<SaleOrder> order =
                orderRepository.getStoreOrder(orderId) as Future<SaleOrder>;

            appRouter
                .navigate(OrderView(storeOrderId: orderId, storeOrder: order));
          }
        }
      }
    }
  }

  Future<void> _remoteUpdateToken(String? fcmToken) async {
    try {
      if (fcmToken != null && fcmToken.isNotEmpty) {
        final userDoc = await _firestore.userDocument();
        await userDoc.set(
          {'merchDeviceToken': fcmToken},
          SetOptions(merge: true),
        );
      }
    } catch (e) {}
  }

  Future fcmInitialization() async {
    try {
      // Generate fcm device token as identifier for
      // sending notification
      String? token = await _fcm.getToken();
      // Update lastest token remotely
      await _remoteUpdateToken(token);
      // Steam device token changes and update remotely
      _fcm.onTokenRefresh.listen((eventToken) async {
        String listenToken = eventToken;
        await _remoteUpdateToken(listenToken);
      });

      // Get any messages which caused the application to open from
      // a terminated state.
      RemoteMessage? initialMessage = await _fcm.getInitialMessage();

      // If the message also contains a data property with a "type" of "chat",
      // navigate to a chat screen
      if (initialMessage != null) {
        NotificationDTO notificationDTO = _convertToNotification(
            NotificationRepository.notificationId++, initialMessage);
        _hasLaunched = true;
        String payLoad = json.encode(notificationDTO.toJson());
        await handleNotificationTap(payLoad);
      }

      // Handle any interaction when the app is in the foreground via a
      // Stream listener
      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        NotificationDTO notificationDTO = _convertToNotification(
            NotificationRepository.notificationId++, message);
        //await showNotification(notificationDTO);
      }, onError: (error) {});

      // Handle any interaction when the app is in the background via a
      // Stream listener
      FirebaseMessaging.onMessageOpenedApp
          .listen((RemoteMessage message) async {
        NotificationDTO notificationDTO = _convertToNotification(
            NotificationRepository.notificationId++, message);
        _hasLaunched = true;
        String payLoad = json.encode(notificationDTO.toJson());
        await handleNotificationTap(payLoad);
      });
    } catch (e) {}
  }

  Future<void> showNotification(NotificationDTO payload) async {
    var vibrationPattern = Int64List(4);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 200;
    vibrationPattern[2] = 200;
    vibrationPattern[3] = 200;

    var bigTextStyleInformation = BigTextStyleInformation(
      payload.notificationBody!,
      contentTitle: payload.notificationTitle,
    );

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      NotificationRepository.notificationId.toString(),
      notificationChannel,
      notificationChannelDescription,
      icon: 'app_icon',
      vibrationPattern: vibrationPattern,
      importance: Importance.max,
      priority: Priority.max,
      styleInformation: bigTextStyleInformation,
    );
    var iOSPlatformChannelSpecifics = IOSNotificationDetails(
      badgeNumber: 1,
    );
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await _ln!.show(
      payload.notificationId,
      payload.notificationTitle,
      payload.notificationBody,
      platformChannelSpecifics,
      payload: json.encode(payload.toJson()),
    );
  }

  NotificationDTO _convertToNotification(
      int notificationId, RemoteMessage message) {
    return NotificationDTO.fromDomain(notificationId, message);
  }

  Future<bool?> _requestIOSPermissions() async {
    try {
      final bool? permission = await _ln!
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );

      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      return permission;
    } catch (e) {}
  }

  Future<void> _createNotificationChannel() async {
    var androidNotificationChannel = AndroidNotificationChannel(
      notificationChannelId,
      notificationChannel,
      notificationChannelDescription,
      importance: Importance.max,
    );
    await _ln!
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidNotificationChannel);
  }

  InitializationSettings _getPlatformSettings() {
    var initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    return InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {}
}
