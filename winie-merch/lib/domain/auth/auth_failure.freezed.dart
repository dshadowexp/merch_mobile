// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  InvalidPhoneNumber invalidPhoneNumber() {
    return const InvalidPhoneNumber();
  }

  InvalidCodeCredential invalideCodeCredential() {
    return const InvalidCodeCredential();
  }

  SessionExpired sessionExpired() {
    return const SessionExpired();
  }

  TooManyRequests tooManyRequests() {
    return const TooManyRequests();
  }

  OperationNotAllowed operationNotAllowed() {
    return const OperationNotAllowed();
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<$Res> {
  factory $InvalidPhoneNumberCopyWith(
          InvalidPhoneNumber value, $Res Function(InvalidPhoneNumber) then) =
      _$InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberCopyWith<$Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber _value, $Res Function(InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber));

  @override
  InvalidPhoneNumber get _value => super._value as InvalidPhoneNumber;
}

/// @nodoc

class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements AuthFailure {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumber;
}

/// @nodoc
abstract class $InvalidCodeCredentialCopyWith<$Res> {
  factory $InvalidCodeCredentialCopyWith(InvalidCodeCredential value,
          $Res Function(InvalidCodeCredential) then) =
      _$InvalidCodeCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCodeCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidCodeCredentialCopyWith<$Res> {
  _$InvalidCodeCredentialCopyWithImpl(
      InvalidCodeCredential _value, $Res Function(InvalidCodeCredential) _then)
      : super(_value, (v) => _then(v as InvalidCodeCredential));

  @override
  InvalidCodeCredential get _value => super._value as InvalidCodeCredential;
}

/// @nodoc

class _$InvalidCodeCredential implements InvalidCodeCredential {
  const _$InvalidCodeCredential();

  @override
  String toString() {
    return 'AuthFailure.invalideCodeCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCodeCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return invalideCodeCredential();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalideCodeCredential != null) {
      return invalideCodeCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalideCodeCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalideCodeCredential != null) {
      return invalideCodeCredential(this);
    }
    return orElse();
  }
}

abstract class InvalidCodeCredential implements AuthFailure {
  const factory InvalidCodeCredential() = _$InvalidCodeCredential;
}

/// @nodoc
abstract class $SessionExpiredCopyWith<$Res> {
  factory $SessionExpiredCopyWith(
          SessionExpired value, $Res Function(SessionExpired) then) =
      _$SessionExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionExpiredCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $SessionExpiredCopyWith<$Res> {
  _$SessionExpiredCopyWithImpl(
      SessionExpired _value, $Res Function(SessionExpired) _then)
      : super(_value, (v) => _then(v as SessionExpired));

  @override
  SessionExpired get _value => super._value as SessionExpired;
}

/// @nodoc

class _$SessionExpired implements SessionExpired {
  const _$SessionExpired();

  @override
  String toString() {
    return 'AuthFailure.sessionExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class SessionExpired implements AuthFailure {
  const factory SessionExpired() = _$SessionExpired;
}

/// @nodoc
abstract class $TooManyRequestsCopyWith<$Res> {
  factory $TooManyRequestsCopyWith(
          TooManyRequests value, $Res Function(TooManyRequests) then) =
      _$TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class _$TooManyRequestsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $TooManyRequestsCopyWith<$Res> {
  _$TooManyRequestsCopyWithImpl(
      TooManyRequests _value, $Res Function(TooManyRequests) _then)
      : super(_value, (v) => _then(v as TooManyRequests));

  @override
  TooManyRequests get _value => super._value as TooManyRequests;
}

/// @nodoc

class _$TooManyRequests implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AuthFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}

/// @nodoc
abstract class $OperationNotAllowedCopyWith<$Res> {
  factory $OperationNotAllowedCopyWith(
          OperationNotAllowed value, $Res Function(OperationNotAllowed) then) =
      _$OperationNotAllowedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OperationNotAllowedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $OperationNotAllowedCopyWith<$Res> {
  _$OperationNotAllowedCopyWithImpl(
      OperationNotAllowed _value, $Res Function(OperationNotAllowed) _then)
      : super(_value, (v) => _then(v as OperationNotAllowed));

  @override
  OperationNotAllowed get _value => super._value as OperationNotAllowed;
}

/// @nodoc

class _$OperationNotAllowed implements OperationNotAllowed {
  const _$OperationNotAllowed();

  @override
  String toString() {
    return 'AuthFailure.operationNotAllowed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OperationNotAllowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return operationNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return operationNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed(this);
    }
    return orElse();
  }
}

abstract class OperationNotAllowed implements AuthFailure {
  const factory OperationNotAllowed() = _$OperationNotAllowed;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalideCodeCredential,
    required TResult Function() sessionExpired,
    required TResult Function() tooManyRequests,
    required TResult Function() operationNotAllowed,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalideCodeCredential,
    TResult Function()? sessionExpired,
    TResult Function()? tooManyRequests,
    TResult Function()? operationNotAllowed,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidCodeCredential value)
        invalideCodeCredential,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidCodeCredential value)? invalideCodeCredential,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}
