import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity.freezed.dart';

@freezed
abstract class Identity implements _$Identity {
  const Identity._();

  const factory Identity({
    String? id,
    String? email,
    String? phoneNumber,
    String? userName,
    String? photo,
  }) = _Identity;

  factory Identity.empty() => Identity(
        id: '',
        email: '',
        phoneNumber: '',
        userName: '',
        photo: '',
      );
}
