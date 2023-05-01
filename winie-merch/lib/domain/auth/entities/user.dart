import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String userName,
    required String email,
    required String phoneNumber,
    required String photoUrl,
  }) = _User;
}
