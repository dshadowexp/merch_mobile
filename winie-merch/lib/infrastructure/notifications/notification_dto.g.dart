// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDTO _$_$_NotificationDTOFromJson(Map<String, dynamic> json) {
  return _$_NotificationDTO(
    notificationId: json['notificationId'] as int,
    notificationTitle: json['notificationTitle'] as String?,
    notificationBody: json['notificationBody'] as String?,
    notificationData: json['notificationData'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_NotificationDTOToJson(_$_NotificationDTO instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'notificationTitle': instance.notificationTitle,
      'notificationBody': instance.notificationBody,
      'notificationData': instance.notificationData,
    };
