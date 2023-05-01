import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';

part 'identity_failure.freezed.dart';

@freezed
abstract class IdentityFailure with _$IdentityFailure {
  const factory IdentityFailure.unexpected() = _Unexpected;
  const factory IdentityFailure.notSetUp(User user) = _NotSetUp;
}
