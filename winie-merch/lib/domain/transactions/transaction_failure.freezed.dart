// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionFailureTearOff {
  const _$TransactionFailureTearOff();

  Delayed delayed() {
    return const Delayed();
  }

  ErrorMessage errorMessage(String message) {
    return ErrorMessage(
      message,
    );
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $TransactionFailure = _$TransactionFailureTearOff();

/// @nodoc
mixin _$TransactionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() delayed,
    required TResult Function(String message) errorMessage,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delayed,
    TResult Function(String message)? errorMessage,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delayed value) delayed,
    required TResult Function(ErrorMessage value) errorMessage,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delayed value)? delayed,
    TResult Function(ErrorMessage value)? errorMessage,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFailureCopyWith<$Res> {
  factory $TransactionFailureCopyWith(
          TransactionFailure value, $Res Function(TransactionFailure) then) =
      _$TransactionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionFailureCopyWithImpl<$Res>
    implements $TransactionFailureCopyWith<$Res> {
  _$TransactionFailureCopyWithImpl(this._value, this._then);

  final TransactionFailure _value;
  // ignore: unused_field
  final $Res Function(TransactionFailure) _then;
}

/// @nodoc
abstract class $DelayedCopyWith<$Res> {
  factory $DelayedCopyWith(Delayed value, $Res Function(Delayed) then) =
      _$DelayedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DelayedCopyWithImpl<$Res> extends _$TransactionFailureCopyWithImpl<$Res>
    implements $DelayedCopyWith<$Res> {
  _$DelayedCopyWithImpl(Delayed _value, $Res Function(Delayed) _then)
      : super(_value, (v) => _then(v as Delayed));

  @override
  Delayed get _value => super._value as Delayed;
}

/// @nodoc

class _$Delayed implements Delayed {
  const _$Delayed();

  @override
  String toString() {
    return 'TransactionFailure.delayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Delayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() delayed,
    required TResult Function(String message) errorMessage,
    required TResult Function() serverError,
  }) {
    return delayed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delayed,
    TResult Function(String message)? errorMessage,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (delayed != null) {
      return delayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delayed value) delayed,
    required TResult Function(ErrorMessage value) errorMessage,
    required TResult Function(ServerError value) serverError,
  }) {
    return delayed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delayed value)? delayed,
    TResult Function(ErrorMessage value)? errorMessage,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (delayed != null) {
      return delayed(this);
    }
    return orElse();
  }
}

abstract class Delayed implements TransactionFailure {
  const factory Delayed() = _$Delayed;
}

/// @nodoc
abstract class $ErrorMessageCopyWith<$Res> {
  factory $ErrorMessageCopyWith(
          ErrorMessage value, $Res Function(ErrorMessage) then) =
      _$ErrorMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorMessageCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
    implements $ErrorMessageCopyWith<$Res> {
  _$ErrorMessageCopyWithImpl(
      ErrorMessage _value, $Res Function(ErrorMessage) _then)
      : super(_value, (v) => _then(v as ErrorMessage));

  @override
  ErrorMessage get _value => super._value as ErrorMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMessage implements ErrorMessage {
  const _$ErrorMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionFailure.errorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorMessageCopyWith<ErrorMessage> get copyWith =>
      _$ErrorMessageCopyWithImpl<ErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() delayed,
    required TResult Function(String message) errorMessage,
    required TResult Function() serverError,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delayed,
    TResult Function(String message)? errorMessage,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delayed value) delayed,
    required TResult Function(ErrorMessage value) errorMessage,
    required TResult Function(ServerError value) serverError,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delayed value)? delayed,
    TResult Function(ErrorMessage value)? errorMessage,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class ErrorMessage implements TransactionFailure {
  const factory ErrorMessage(String message) = _$ErrorMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageCopyWith<ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$TransactionFailureCopyWithImpl<$Res>
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
    return 'TransactionFailure.serverError()';
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
    required TResult Function() delayed,
    required TResult Function(String message) errorMessage,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? delayed,
    TResult Function(String message)? errorMessage,
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
    required TResult Function(Delayed value) delayed,
    required TResult Function(ErrorMessage value) errorMessage,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delayed value)? delayed,
    TResult Function(ErrorMessage value)? errorMessage,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements TransactionFailure {
  const factory ServerError() = _$ServerError;
}
