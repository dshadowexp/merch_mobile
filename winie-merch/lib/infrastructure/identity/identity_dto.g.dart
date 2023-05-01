// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdentityDTO _$_$_IdentityDTOFromJson(Map<String, dynamic> json) {
  return _$_IdentityDTO(
    id: json['id'] as String?,
    phoneNumber: json['phoneNumber'] as String?,
    email: json['email'] as String?,
    userName: json['userName'] as String?,
    photo: json['photo'] as String?,
  );
}

Map<String, dynamic> _$_$_IdentityDTOToJson(_$_IdentityDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'userName': instance.userName,
      'photo': instance.photo,
    };
