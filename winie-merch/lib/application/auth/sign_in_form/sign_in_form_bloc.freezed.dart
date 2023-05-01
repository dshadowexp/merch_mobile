// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

  VerificationCodeChange verificationCodeChanged(String codeVerification) {
    return VerificationCodeChange(
      codeVerification,
    );
  }

  VerifyPhoneNumberPressed verifyPhoneNumberPressed() {
    return const VerifyPhoneNumberPressed();
  }

  AuthenticateVerificationCode authenticateVerificationCode() {
    return const AuthenticateVerificationCode();
  }

  ResendAuthenticationCode resendAuthenticationCode() {
    return const ResendAuthenticationCode();
  }

  SetErrorFunction setErrorFunction(Function errorFunction) {
    return SetErrorFunction(
      errorFunction,
    );
  }

  SetSuccessFunction setSuccessFunction(Function successFunction) {
    return SetSuccessFunction(
      successFunction,
    );
  }

  AuthReceived authReceived(Either<AuthFailure, User> authFailureOrSuccess) {
    return AuthReceived(
      authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged
    with DiagnosticableTreeMixin
    implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.phoneNumberChanged'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements SignInFormEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCodeChangeCopyWith<$Res> {
  factory $VerificationCodeChangeCopyWith(VerificationCodeChange value,
          $Res Function(VerificationCodeChange) then) =
      _$VerificationCodeChangeCopyWithImpl<$Res>;
  $Res call({String codeVerification});
}

/// @nodoc
class _$VerificationCodeChangeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $VerificationCodeChangeCopyWith<$Res> {
  _$VerificationCodeChangeCopyWithImpl(VerificationCodeChange _value,
      $Res Function(VerificationCodeChange) _then)
      : super(_value, (v) => _then(v as VerificationCodeChange));

  @override
  VerificationCodeChange get _value => super._value as VerificationCodeChange;

  @override
  $Res call({
    Object? codeVerification = freezed,
  }) {
    return _then(VerificationCodeChange(
      codeVerification == freezed
          ? _value.codeVerification
          : codeVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerificationCodeChange
    with DiagnosticableTreeMixin
    implements VerificationCodeChange {
  const _$VerificationCodeChange(this.codeVerification);

  @override
  final String codeVerification;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.verificationCodeChanged(codeVerification: $codeVerification)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.verificationCodeChanged'))
      ..add(DiagnosticsProperty('codeVerification', codeVerification));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerificationCodeChange &&
            (identical(other.codeVerification, codeVerification) ||
                const DeepCollectionEquality()
                    .equals(other.codeVerification, codeVerification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(codeVerification);

  @JsonKey(ignore: true)
  @override
  $VerificationCodeChangeCopyWith<VerificationCodeChange> get copyWith =>
      _$VerificationCodeChangeCopyWithImpl<VerificationCodeChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return verificationCodeChanged(codeVerification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(codeVerification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return verificationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class VerificationCodeChange implements SignInFormEvent {
  const factory VerificationCodeChange(String codeVerification) =
      _$VerificationCodeChange;

  String get codeVerification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationCodeChangeCopyWith<VerificationCodeChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneNumberPressedCopyWith<$Res> {
  factory $VerifyPhoneNumberPressedCopyWith(VerifyPhoneNumberPressed value,
          $Res Function(VerifyPhoneNumberPressed) then) =
      _$VerifyPhoneNumberPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneNumberPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $VerifyPhoneNumberPressedCopyWith<$Res> {
  _$VerifyPhoneNumberPressedCopyWithImpl(VerifyPhoneNumberPressed _value,
      $Res Function(VerifyPhoneNumberPressed) _then)
      : super(_value, (v) => _then(v as VerifyPhoneNumberPressed));

  @override
  VerifyPhoneNumberPressed get _value =>
      super._value as VerifyPhoneNumberPressed;
}

/// @nodoc

class _$VerifyPhoneNumberPressed
    with DiagnosticableTreeMixin
    implements VerifyPhoneNumberPressed {
  const _$VerifyPhoneNumberPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.verifyPhoneNumberPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.verifyPhoneNumberPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyPhoneNumberPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return verifyPhoneNumberPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberPressed != null) {
      return verifyPhoneNumberPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return verifyPhoneNumberPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberPressed != null) {
      return verifyPhoneNumberPressed(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneNumberPressed implements SignInFormEvent {
  const factory VerifyPhoneNumberPressed() = _$VerifyPhoneNumberPressed;
}

/// @nodoc
abstract class $AuthenticateVerificationCodeCopyWith<$Res> {
  factory $AuthenticateVerificationCodeCopyWith(
          AuthenticateVerificationCode value,
          $Res Function(AuthenticateVerificationCode) then) =
      _$AuthenticateVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticateVerificationCodeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $AuthenticateVerificationCodeCopyWith<$Res> {
  _$AuthenticateVerificationCodeCopyWithImpl(
      AuthenticateVerificationCode _value,
      $Res Function(AuthenticateVerificationCode) _then)
      : super(_value, (v) => _then(v as AuthenticateVerificationCode));

  @override
  AuthenticateVerificationCode get _value =>
      super._value as AuthenticateVerificationCode;
}

/// @nodoc

class _$AuthenticateVerificationCode
    with DiagnosticableTreeMixin
    implements AuthenticateVerificationCode {
  const _$AuthenticateVerificationCode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.authenticateVerificationCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.authenticateVerificationCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticateVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return authenticateVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (authenticateVerificationCode != null) {
      return authenticateVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return authenticateVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (authenticateVerificationCode != null) {
      return authenticateVerificationCode(this);
    }
    return orElse();
  }
}

abstract class AuthenticateVerificationCode implements SignInFormEvent {
  const factory AuthenticateVerificationCode() = _$AuthenticateVerificationCode;
}

/// @nodoc
abstract class $ResendAuthenticationCodeCopyWith<$Res> {
  factory $ResendAuthenticationCodeCopyWith(ResendAuthenticationCode value,
          $Res Function(ResendAuthenticationCode) then) =
      _$ResendAuthenticationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendAuthenticationCodeCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $ResendAuthenticationCodeCopyWith<$Res> {
  _$ResendAuthenticationCodeCopyWithImpl(ResendAuthenticationCode _value,
      $Res Function(ResendAuthenticationCode) _then)
      : super(_value, (v) => _then(v as ResendAuthenticationCode));

  @override
  ResendAuthenticationCode get _value =>
      super._value as ResendAuthenticationCode;
}

/// @nodoc

class _$ResendAuthenticationCode
    with DiagnosticableTreeMixin
    implements ResendAuthenticationCode {
  const _$ResendAuthenticationCode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.resendAuthenticationCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.resendAuthenticationCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendAuthenticationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return resendAuthenticationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (resendAuthenticationCode != null) {
      return resendAuthenticationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return resendAuthenticationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (resendAuthenticationCode != null) {
      return resendAuthenticationCode(this);
    }
    return orElse();
  }
}

abstract class ResendAuthenticationCode implements SignInFormEvent {
  const factory ResendAuthenticationCode() = _$ResendAuthenticationCode;
}

/// @nodoc
abstract class $SetErrorFunctionCopyWith<$Res> {
  factory $SetErrorFunctionCopyWith(
          SetErrorFunction value, $Res Function(SetErrorFunction) then) =
      _$SetErrorFunctionCopyWithImpl<$Res>;
  $Res call({Function errorFunction});
}

/// @nodoc
class _$SetErrorFunctionCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SetErrorFunctionCopyWith<$Res> {
  _$SetErrorFunctionCopyWithImpl(
      SetErrorFunction _value, $Res Function(SetErrorFunction) _then)
      : super(_value, (v) => _then(v as SetErrorFunction));

  @override
  SetErrorFunction get _value => super._value as SetErrorFunction;

  @override
  $Res call({
    Object? errorFunction = freezed,
  }) {
    return _then(SetErrorFunction(
      errorFunction == freezed
          ? _value.errorFunction
          : errorFunction // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$SetErrorFunction
    with DiagnosticableTreeMixin
    implements SetErrorFunction {
  const _$SetErrorFunction(this.errorFunction);

  @override
  final Function errorFunction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.setErrorFunction(errorFunction: $errorFunction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.setErrorFunction'))
      ..add(DiagnosticsProperty('errorFunction', errorFunction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetErrorFunction &&
            (identical(other.errorFunction, errorFunction) ||
                const DeepCollectionEquality()
                    .equals(other.errorFunction, errorFunction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorFunction);

  @JsonKey(ignore: true)
  @override
  $SetErrorFunctionCopyWith<SetErrorFunction> get copyWith =>
      _$SetErrorFunctionCopyWithImpl<SetErrorFunction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return setErrorFunction(errorFunction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (setErrorFunction != null) {
      return setErrorFunction(errorFunction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return setErrorFunction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (setErrorFunction != null) {
      return setErrorFunction(this);
    }
    return orElse();
  }
}

abstract class SetErrorFunction implements SignInFormEvent {
  const factory SetErrorFunction(Function errorFunction) = _$SetErrorFunction;

  Function get errorFunction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetErrorFunctionCopyWith<SetErrorFunction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSuccessFunctionCopyWith<$Res> {
  factory $SetSuccessFunctionCopyWith(
          SetSuccessFunction value, $Res Function(SetSuccessFunction) then) =
      _$SetSuccessFunctionCopyWithImpl<$Res>;
  $Res call({Function successFunction});
}

/// @nodoc
class _$SetSuccessFunctionCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SetSuccessFunctionCopyWith<$Res> {
  _$SetSuccessFunctionCopyWithImpl(
      SetSuccessFunction _value, $Res Function(SetSuccessFunction) _then)
      : super(_value, (v) => _then(v as SetSuccessFunction));

  @override
  SetSuccessFunction get _value => super._value as SetSuccessFunction;

  @override
  $Res call({
    Object? successFunction = freezed,
  }) {
    return _then(SetSuccessFunction(
      successFunction == freezed
          ? _value.successFunction
          : successFunction // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$SetSuccessFunction
    with DiagnosticableTreeMixin
    implements SetSuccessFunction {
  const _$SetSuccessFunction(this.successFunction);

  @override
  final Function successFunction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.setSuccessFunction(successFunction: $successFunction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.setSuccessFunction'))
      ..add(DiagnosticsProperty('successFunction', successFunction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSuccessFunction &&
            (identical(other.successFunction, successFunction) ||
                const DeepCollectionEquality()
                    .equals(other.successFunction, successFunction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successFunction);

  @JsonKey(ignore: true)
  @override
  $SetSuccessFunctionCopyWith<SetSuccessFunction> get copyWith =>
      _$SetSuccessFunctionCopyWithImpl<SetSuccessFunction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return setSuccessFunction(successFunction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (setSuccessFunction != null) {
      return setSuccessFunction(successFunction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return setSuccessFunction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (setSuccessFunction != null) {
      return setSuccessFunction(this);
    }
    return orElse();
  }
}

abstract class SetSuccessFunction implements SignInFormEvent {
  const factory SetSuccessFunction(Function successFunction) =
      _$SetSuccessFunction;

  Function get successFunction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSuccessFunctionCopyWith<SetSuccessFunction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthReceivedCopyWith<$Res> {
  factory $AuthReceivedCopyWith(
          AuthReceived value, $Res Function(AuthReceived) then) =
      _$AuthReceivedCopyWithImpl<$Res>;
  $Res call({Either<AuthFailure, User> authFailureOrSuccess});
}

/// @nodoc
class _$AuthReceivedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $AuthReceivedCopyWith<$Res> {
  _$AuthReceivedCopyWithImpl(
      AuthReceived _value, $Res Function(AuthReceived) _then)
      : super(_value, (v) => _then(v as AuthReceived));

  @override
  AuthReceived get _value => super._value as AuthReceived;

  @override
  $Res call({
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(AuthReceived(
      authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, User>,
    ));
  }
}

/// @nodoc

class _$AuthReceived with DiagnosticableTreeMixin implements AuthReceived {
  const _$AuthReceived(this.authFailureOrSuccess);

  @override
  final Either<AuthFailure, User> authFailureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.authReceived(authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.authReceived'))
      ..add(DiagnosticsProperty('authFailureOrSuccess', authFailureOrSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthReceived &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  $AuthReceivedCopyWith<AuthReceived> get copyWith =>
      _$AuthReceivedCopyWithImpl<AuthReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String codeVerification) verificationCodeChanged,
    required TResult Function() verifyPhoneNumberPressed,
    required TResult Function() authenticateVerificationCode,
    required TResult Function() resendAuthenticationCode,
    required TResult Function(Function errorFunction) setErrorFunction,
    required TResult Function(Function successFunction) setSuccessFunction,
    required TResult Function(Either<AuthFailure, User> authFailureOrSuccess)
        authReceived,
  }) {
    return authReceived(authFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String codeVerification)? verificationCodeChanged,
    TResult Function()? verifyPhoneNumberPressed,
    TResult Function()? authenticateVerificationCode,
    TResult Function()? resendAuthenticationCode,
    TResult Function(Function errorFunction)? setErrorFunction,
    TResult Function(Function successFunction)? setSuccessFunction,
    TResult Function(Either<AuthFailure, User> authFailureOrSuccess)?
        authReceived,
    required TResult orElse(),
  }) {
    if (authReceived != null) {
      return authReceived(authFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(VerificationCodeChange value)
        verificationCodeChanged,
    required TResult Function(VerifyPhoneNumberPressed value)
        verifyPhoneNumberPressed,
    required TResult Function(AuthenticateVerificationCode value)
        authenticateVerificationCode,
    required TResult Function(ResendAuthenticationCode value)
        resendAuthenticationCode,
    required TResult Function(SetErrorFunction value) setErrorFunction,
    required TResult Function(SetSuccessFunction value) setSuccessFunction,
    required TResult Function(AuthReceived value) authReceived,
  }) {
    return authReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(VerificationCodeChange value)? verificationCodeChanged,
    TResult Function(VerifyPhoneNumberPressed value)? verifyPhoneNumberPressed,
    TResult Function(AuthenticateVerificationCode value)?
        authenticateVerificationCode,
    TResult Function(ResendAuthenticationCode value)? resendAuthenticationCode,
    TResult Function(SetErrorFunction value)? setErrorFunction,
    TResult Function(SetSuccessFunction value)? setSuccessFunction,
    TResult Function(AuthReceived value)? authReceived,
    required TResult orElse(),
  }) {
    if (authReceived != null) {
      return authReceived(this);
    }
    return orElse();
  }
}

abstract class AuthReceived implements SignInFormEvent {
  const factory AuthReceived(Either<AuthFailure, User> authFailureOrSuccess) =
      _$AuthReceived;

  Either<AuthFailure, User> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthReceivedCopyWith<AuthReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required PhoneNumber phoneNumber,
      required VerificationCode verificationCode,
      required Function errorFunction,
      required Function successFunction,
      required Option<Either<AuthFailure, User>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      phoneNumber: phoneNumber,
      verificationCode: verificationCode,
      errorFunction: errorFunction,
      successFunction: successFunction,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  VerificationCode get verificationCode => throw _privateConstructorUsedError;
  Function get errorFunction => throw _privateConstructorUsedError;
  Function get successFunction => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneNumber phoneNumber,
      VerificationCode verificationCode,
      Function errorFunction,
      Function successFunction,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationCode = freezed,
    Object? errorFunction = freezed,
    Object? successFunction = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      errorFunction: errorFunction == freezed
          ? _value.errorFunction
          : errorFunction // ignore: cast_nullable_to_non_nullable
              as Function,
      successFunction: successFunction == freezed
          ? _value.successFunction
          : successFunction // ignore: cast_nullable_to_non_nullable
              as Function,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneNumber phoneNumber,
      VerificationCode verificationCode,
      Function errorFunction,
      Function successFunction,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationCode = freezed,
    Object? errorFunction = freezed,
    Object? successFunction = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      errorFunction: errorFunction == freezed
          ? _value.errorFunction
          : errorFunction // ignore: cast_nullable_to_non_nullable
              as Function,
      successFunction: successFunction == freezed
          ? _value.successFunction
          : successFunction // ignore: cast_nullable_to_non_nullable
              as Function,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {required this.phoneNumber,
      required this.verificationCode,
      required this.errorFunction,
      required this.successFunction,
      required this.authFailureOrSuccessOption});

  @override
  final PhoneNumber phoneNumber;
  @override
  final VerificationCode verificationCode;
  @override
  final Function errorFunction;
  @override
  final Function successFunction;
  @override
  final Option<Either<AuthFailure, User>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(phoneNumber: $phoneNumber, verificationCode: $verificationCode, errorFunction: $errorFunction, successFunction: $successFunction, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('verificationCode', verificationCode))
      ..add(DiagnosticsProperty('errorFunction', errorFunction))
      ..add(DiagnosticsProperty('successFunction', successFunction))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)) &&
            (identical(other.errorFunction, errorFunction) ||
                const DeepCollectionEquality()
                    .equals(other.errorFunction, errorFunction)) &&
            (identical(other.successFunction, successFunction) ||
                const DeepCollectionEquality()
                    .equals(other.successFunction, successFunction)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(errorFunction) ^
      const DeepCollectionEquality().hash(successFunction) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required PhoneNumber phoneNumber,
      required VerificationCode verificationCode,
      required Function errorFunction,
      required Function successFunction,
      required Option<Either<AuthFailure, User>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  VerificationCode get verificationCode => throw _privateConstructorUsedError;
  @override
  Function get errorFunction => throw _privateConstructorUsedError;
  @override
  Function get successFunction => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
