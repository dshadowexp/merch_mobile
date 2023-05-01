// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

  _Charged charged(Transaction payment) {
    return _Charged(
      payment,
    );
  }

  _StatusListened statusListened(String referenceId) {
    return _StatusListened(
      referenceId,
    );
  }

  _StatusStopped statusStopped() {
    return const _StatusStopped();
  }

  _StatusReceived statusReceived(Map<String, String> payload) {
    return _StatusReceived(
      payload,
    );
  }

  _SubmitOTP submittedOTP(String reference, String otp) {
    return _SubmitOTP(
      reference,
      otp,
    );
  }
}

/// @nodoc
const $TransactionEvent = _$TransactionEventTearOff();

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$ChargedCopyWith<$Res> {
  factory _$ChargedCopyWith(_Charged value, $Res Function(_Charged) then) =
      __$ChargedCopyWithImpl<$Res>;
  $Res call({Transaction payment});

  $TransactionCopyWith<$Res> get payment;
}

/// @nodoc
class __$ChargedCopyWithImpl<$Res> extends _$TransactionEventCopyWithImpl<$Res>
    implements _$ChargedCopyWith<$Res> {
  __$ChargedCopyWithImpl(_Charged _value, $Res Function(_Charged) _then)
      : super(_value, (v) => _then(v as _Charged));

  @override
  _Charged get _value => super._value as _Charged;

  @override
  $Res call({
    Object? payment = freezed,
  }) {
    return _then(_Charged(
      payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  @override
  $TransactionCopyWith<$Res> get payment {
    return $TransactionCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$_Charged implements _Charged {
  const _$_Charged(this.payment);

  @override
  final Transaction payment;

  @override
  String toString() {
    return 'TransactionEvent.charged(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Charged &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @JsonKey(ignore: true)
  @override
  _$ChargedCopyWith<_Charged> get copyWith =>
      __$ChargedCopyWithImpl<_Charged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) {
    return charged(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) {
    if (charged != null) {
      return charged(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) {
    return charged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) {
    if (charged != null) {
      return charged(this);
    }
    return orElse();
  }
}

abstract class _Charged implements TransactionEvent {
  const factory _Charged(Transaction payment) = _$_Charged;

  Transaction get payment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChargedCopyWith<_Charged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StatusListenedCopyWith<$Res> {
  factory _$StatusListenedCopyWith(
          _StatusListened value, $Res Function(_StatusListened) then) =
      __$StatusListenedCopyWithImpl<$Res>;
  $Res call({String referenceId});
}

/// @nodoc
class __$StatusListenedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$StatusListenedCopyWith<$Res> {
  __$StatusListenedCopyWithImpl(
      _StatusListened _value, $Res Function(_StatusListened) _then)
      : super(_value, (v) => _then(v as _StatusListened));

  @override
  _StatusListened get _value => super._value as _StatusListened;

  @override
  $Res call({
    Object? referenceId = freezed,
  }) {
    return _then(_StatusListened(
      referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StatusListened implements _StatusListened {
  const _$_StatusListened(this.referenceId);

  @override
  final String referenceId;

  @override
  String toString() {
    return 'TransactionEvent.statusListened(referenceId: $referenceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusListened &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(referenceId);

  @JsonKey(ignore: true)
  @override
  _$StatusListenedCopyWith<_StatusListened> get copyWith =>
      __$StatusListenedCopyWithImpl<_StatusListened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) {
    return statusListened(referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusListened != null) {
      return statusListened(referenceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) {
    return statusListened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusListened != null) {
      return statusListened(this);
    }
    return orElse();
  }
}

abstract class _StatusListened implements TransactionEvent {
  const factory _StatusListened(String referenceId) = _$_StatusListened;

  String get referenceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StatusListenedCopyWith<_StatusListened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StatusStoppedCopyWith<$Res> {
  factory _$StatusStoppedCopyWith(
          _StatusStopped value, $Res Function(_StatusStopped) then) =
      __$StatusStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StatusStoppedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$StatusStoppedCopyWith<$Res> {
  __$StatusStoppedCopyWithImpl(
      _StatusStopped _value, $Res Function(_StatusStopped) _then)
      : super(_value, (v) => _then(v as _StatusStopped));

  @override
  _StatusStopped get _value => super._value as _StatusStopped;
}

/// @nodoc

class _$_StatusStopped implements _StatusStopped {
  const _$_StatusStopped();

  @override
  String toString() {
    return 'TransactionEvent.statusStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) {
    return statusStopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusStopped != null) {
      return statusStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) {
    return statusStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusStopped != null) {
      return statusStopped(this);
    }
    return orElse();
  }
}

abstract class _StatusStopped implements TransactionEvent {
  const factory _StatusStopped() = _$_StatusStopped;
}

/// @nodoc
abstract class _$StatusReceivedCopyWith<$Res> {
  factory _$StatusReceivedCopyWith(
          _StatusReceived value, $Res Function(_StatusReceived) then) =
      __$StatusReceivedCopyWithImpl<$Res>;
  $Res call({Map<String, String> payload});
}

/// @nodoc
class __$StatusReceivedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$StatusReceivedCopyWith<$Res> {
  __$StatusReceivedCopyWithImpl(
      _StatusReceived _value, $Res Function(_StatusReceived) _then)
      : super(_value, (v) => _then(v as _StatusReceived));

  @override
  _StatusReceived get _value => super._value as _StatusReceived;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_StatusReceived(
      payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_StatusReceived implements _StatusReceived {
  const _$_StatusReceived(this.payload);

  @override
  final Map<String, String> payload;

  @override
  String toString() {
    return 'TransactionEvent.statusReceived(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusReceived &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$StatusReceivedCopyWith<_StatusReceived> get copyWith =>
      __$StatusReceivedCopyWithImpl<_StatusReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) {
    return statusReceived(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusReceived != null) {
      return statusReceived(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) {
    return statusReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) {
    if (statusReceived != null) {
      return statusReceived(this);
    }
    return orElse();
  }
}

abstract class _StatusReceived implements TransactionEvent {
  const factory _StatusReceived(Map<String, String> payload) =
      _$_StatusReceived;

  Map<String, String> get payload => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StatusReceivedCopyWith<_StatusReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitOTPCopyWith<$Res> {
  factory _$SubmitOTPCopyWith(
          _SubmitOTP value, $Res Function(_SubmitOTP) then) =
      __$SubmitOTPCopyWithImpl<$Res>;
  $Res call({String reference, String otp});
}

/// @nodoc
class __$SubmitOTPCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$SubmitOTPCopyWith<$Res> {
  __$SubmitOTPCopyWithImpl(_SubmitOTP _value, $Res Function(_SubmitOTP) _then)
      : super(_value, (v) => _then(v as _SubmitOTP));

  @override
  _SubmitOTP get _value => super._value as _SubmitOTP;

  @override
  $Res call({
    Object? reference = freezed,
    Object? otp = freezed,
  }) {
    return _then(_SubmitOTP(
      reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitOTP implements _SubmitOTP {
  const _$_SubmitOTP(this.reference, this.otp);

  @override
  final String reference;
  @override
  final String otp;

  @override
  String toString() {
    return 'TransactionEvent.submittedOTP(reference: $reference, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitOTP &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$SubmitOTPCopyWith<_SubmitOTP> get copyWith =>
      __$SubmitOTPCopyWithImpl<_SubmitOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transaction payment) charged,
    required TResult Function(String referenceId) statusListened,
    required TResult Function() statusStopped,
    required TResult Function(Map<String, String> payload) statusReceived,
    required TResult Function(String reference, String otp) submittedOTP,
  }) {
    return submittedOTP(reference, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transaction payment)? charged,
    TResult Function(String referenceId)? statusListened,
    TResult Function()? statusStopped,
    TResult Function(Map<String, String> payload)? statusReceived,
    TResult Function(String reference, String otp)? submittedOTP,
    required TResult orElse(),
  }) {
    if (submittedOTP != null) {
      return submittedOTP(reference, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Charged value) charged,
    required TResult Function(_StatusListened value) statusListened,
    required TResult Function(_StatusStopped value) statusStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_SubmitOTP value) submittedOTP,
  }) {
    return submittedOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Charged value)? charged,
    TResult Function(_StatusListened value)? statusListened,
    TResult Function(_StatusStopped value)? statusStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_SubmitOTP value)? submittedOTP,
    required TResult orElse(),
  }) {
    if (submittedOTP != null) {
      return submittedOTP(this);
    }
    return orElse();
  }
}

abstract class _SubmitOTP implements TransactionEvent {
  const factory _SubmitOTP(String reference, String otp) = _$_SubmitOTP;

  String get reference => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubmitOTPCopyWith<_SubmitOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _TransactionSuccess transactionSuccess(String referenceId) {
    return _TransactionSuccess(
      referenceId,
    );
  }

  _TransactionProcessing transactionProcessing(dynamic payload) {
    return _TransactionProcessing(
      payload,
    );
  }

  _TransactionLoading transactionLoading() {
    return const _TransactionLoading();
  }

  _TransactionFailure transactionFailure(
      TransactionFailure transactionFailure) {
    return _TransactionFailure(
      transactionFailure,
    );
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TransactionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$TransactionSuccessCopyWith<$Res> {
  factory _$TransactionSuccessCopyWith(
          _TransactionSuccess value, $Res Function(_TransactionSuccess) then) =
      __$TransactionSuccessCopyWithImpl<$Res>;
  $Res call({String referenceId});
}

/// @nodoc
class __$TransactionSuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionSuccessCopyWith<$Res> {
  __$TransactionSuccessCopyWithImpl(
      _TransactionSuccess _value, $Res Function(_TransactionSuccess) _then)
      : super(_value, (v) => _then(v as _TransactionSuccess));

  @override
  _TransactionSuccess get _value => super._value as _TransactionSuccess;

  @override
  $Res call({
    Object? referenceId = freezed,
  }) {
    return _then(_TransactionSuccess(
      referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TransactionSuccess implements _TransactionSuccess {
  const _$_TransactionSuccess(this.referenceId);

  @override
  final String referenceId;

  @override
  String toString() {
    return 'TransactionState.transactionSuccess(referenceId: $referenceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionSuccess &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(referenceId);

  @JsonKey(ignore: true)
  @override
  _$TransactionSuccessCopyWith<_TransactionSuccess> get copyWith =>
      __$TransactionSuccessCopyWithImpl<_TransactionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) {
    return transactionSuccess(referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(referenceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) {
    return transactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _TransactionSuccess implements TransactionState {
  const factory _TransactionSuccess(String referenceId) = _$_TransactionSuccess;

  String get referenceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionSuccessCopyWith<_TransactionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionProcessingCopyWith<$Res> {
  factory _$TransactionProcessingCopyWith(_TransactionProcessing value,
          $Res Function(_TransactionProcessing) then) =
      __$TransactionProcessingCopyWithImpl<$Res>;
  $Res call({dynamic payload});
}

/// @nodoc
class __$TransactionProcessingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionProcessingCopyWith<$Res> {
  __$TransactionProcessingCopyWithImpl(_TransactionProcessing _value,
      $Res Function(_TransactionProcessing) _then)
      : super(_value, (v) => _then(v as _TransactionProcessing));

  @override
  _TransactionProcessing get _value => super._value as _TransactionProcessing;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_TransactionProcessing(
      payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_TransactionProcessing implements _TransactionProcessing {
  const _$_TransactionProcessing(this.payload);

  @override
  final dynamic payload;

  @override
  String toString() {
    return 'TransactionState.transactionProcessing(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionProcessing &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$TransactionProcessingCopyWith<_TransactionProcessing> get copyWith =>
      __$TransactionProcessingCopyWithImpl<_TransactionProcessing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) {
    return transactionProcessing(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionProcessing != null) {
      return transactionProcessing(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) {
    return transactionProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionProcessing != null) {
      return transactionProcessing(this);
    }
    return orElse();
  }
}

abstract class _TransactionProcessing implements TransactionState {
  const factory _TransactionProcessing(dynamic payload) =
      _$_TransactionProcessing;

  dynamic get payload => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionProcessingCopyWith<_TransactionProcessing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionLoadingCopyWith<$Res> {
  factory _$TransactionLoadingCopyWith(
          _TransactionLoading value, $Res Function(_TransactionLoading) then) =
      __$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransactionLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionLoadingCopyWith<$Res> {
  __$TransactionLoadingCopyWithImpl(
      _TransactionLoading _value, $Res Function(_TransactionLoading) _then)
      : super(_value, (v) => _then(v as _TransactionLoading));

  @override
  _TransactionLoading get _value => super._value as _TransactionLoading;
}

/// @nodoc

class _$_TransactionLoading implements _TransactionLoading {
  const _$_TransactionLoading();

  @override
  String toString() {
    return 'TransactionState.transactionLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TransactionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) {
    return transactionLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) {
    return transactionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading(this);
    }
    return orElse();
  }
}

abstract class _TransactionLoading implements TransactionState {
  const factory _TransactionLoading() = _$_TransactionLoading;
}

/// @nodoc
abstract class _$TransactionFailureCopyWith<$Res> {
  factory _$TransactionFailureCopyWith(
          _TransactionFailure value, $Res Function(_TransactionFailure) then) =
      __$TransactionFailureCopyWithImpl<$Res>;
  $Res call({TransactionFailure transactionFailure});

  $TransactionFailureCopyWith<$Res> get transactionFailure;
}

/// @nodoc
class __$TransactionFailureCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionFailureCopyWith<$Res> {
  __$TransactionFailureCopyWithImpl(
      _TransactionFailure _value, $Res Function(_TransactionFailure) _then)
      : super(_value, (v) => _then(v as _TransactionFailure));

  @override
  _TransactionFailure get _value => super._value as _TransactionFailure;

  @override
  $Res call({
    Object? transactionFailure = freezed,
  }) {
    return _then(_TransactionFailure(
      transactionFailure == freezed
          ? _value.transactionFailure
          : transactionFailure // ignore: cast_nullable_to_non_nullable
              as TransactionFailure,
    ));
  }

  @override
  $TransactionFailureCopyWith<$Res> get transactionFailure {
    return $TransactionFailureCopyWith<$Res>(_value.transactionFailure,
        (value) {
      return _then(_value.copyWith(transactionFailure: value));
    });
  }
}

/// @nodoc

class _$_TransactionFailure implements _TransactionFailure {
  const _$_TransactionFailure(this.transactionFailure);

  @override
  final TransactionFailure transactionFailure;

  @override
  String toString() {
    return 'TransactionState.transactionFailure(transactionFailure: $transactionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionFailure &&
            (identical(other.transactionFailure, transactionFailure) ||
                const DeepCollectionEquality()
                    .equals(other.transactionFailure, transactionFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionFailure);

  @JsonKey(ignore: true)
  @override
  _$TransactionFailureCopyWith<_TransactionFailure> get copyWith =>
      __$TransactionFailureCopyWithImpl<_TransactionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String referenceId) transactionSuccess,
    required TResult Function(dynamic payload) transactionProcessing,
    required TResult Function() transactionLoading,
    required TResult Function(TransactionFailure transactionFailure)
        transactionFailure,
  }) {
    return transactionFailure(this.transactionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String referenceId)? transactionSuccess,
    TResult Function(dynamic payload)? transactionProcessing,
    TResult Function()? transactionLoading,
    TResult Function(TransactionFailure transactionFailure)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionFailure != null) {
      return transactionFailure(this.transactionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_TransactionProcessing value)
        transactionProcessing,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionFailure value) transactionFailure,
  }) {
    return transactionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_TransactionProcessing value)? transactionProcessing,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionFailure value)? transactionFailure,
    required TResult orElse(),
  }) {
    if (transactionFailure != null) {
      return transactionFailure(this);
    }
    return orElse();
  }
}

abstract class _TransactionFailure implements TransactionState {
  const factory _TransactionFailure(TransactionFailure transactionFailure) =
      _$_TransactionFailure;

  TransactionFailure get transactionFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionFailureCopyWith<_TransactionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
