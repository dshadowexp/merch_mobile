import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';

part 'identity_dto.freezed.dart';
part 'identity_dto.g.dart';

@freezed
abstract class IdentityDTO implements _$IdentityDTO {
  const IdentityDTO._();

  const factory IdentityDTO({
    String? id,
    String? phoneNumber,
    String? email,
    String? userName,
    String? photo,
  }) = _IdentityDTO;

  factory IdentityDTO.fromDomain(Identity identity) {
    return IdentityDTO(
      id: identity.id,
      email: identity.email,
      phoneNumber: identity.phoneNumber,
      userName: identity.userName,
      photo: identity.photo,
    );
  }

  Identity toDomain() {
    return Identity(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      userName: userName,
      photo: photo,
    );
  }

  factory IdentityDTO.fromJson(Map<String, dynamic> json) =>
      _$IdentityDTOFromJson(json);

  factory IdentityDTO.fromFirestore(DocumentSnapshot doc) {
    return IdentityDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
