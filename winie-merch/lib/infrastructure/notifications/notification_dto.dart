import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
abstract class NotificationDTO implements _$NotificationDTO {
  const NotificationDTO._();

  const factory NotificationDTO({
    required int notificationId,
    required String? notificationTitle,
    required String? notificationBody,
    required Map<String, dynamic> notificationData,
  }) = _NotificationDTO;

  factory NotificationDTO.fromDomain(
      int notificationId, RemoteMessage message) {
    return NotificationDTO(
      notificationId: notificationId,
      notificationTitle: message.notification!.title,
      notificationBody: message.notification!.body,
      notificationData: message.data,
    );
  }

  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);
}
