// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_manager_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreManagerFailureTearOff {
  const _$StoreManagerFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  NoStores noStores() {
    return const NoStores();
  }
}

/// @nodoc
const $StoreManagerFailure = _$StoreManagerFailureTearOff();

/// @nodoc
mixin _$StoreManagerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoStores value) noStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoStores value)? noStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreManagerFailureCopyWith<$Res> {
  factory $StoreManagerFailureCopyWith(
          StoreManagerFailure value, $Res Function(StoreManagerFailure) then) =
      _$StoreManagerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreManagerFailureCopyWithImpl<$Res>
    implements $StoreManagerFailureCopyWith<$Res> {
  _$StoreManagerFailureCopyWithImpl(this._value, this._then);

  final StoreManagerFailure _value;
  // ignore: unused_field
  final $Res Function(StoreManagerFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$StoreManagerFailureCopyWithImpl<$Res>
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
    return 'StoreManagerFailure.serverError()';
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
    required TResult Function() serverError,
    required TResult Function() noStores,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noStores,
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
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoStores value) noStores,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoStores value)? noStores,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements StoreManagerFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $NoStoresCopyWith<$Res> {
  factory $NoStoresCopyWith(NoStores value, $Res Function(NoStores) then) =
      _$NoStoresCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoStoresCopyWithImpl<$Res>
    extends _$StoreManagerFailureCopyWithImpl<$Res>
    implements $NoStoresCopyWith<$Res> {
  _$NoStoresCopyWithImpl(NoStores _value, $Res Function(NoStores) _then)
      : super(_value, (v) => _then(v as NoStores));

  @override
  NoStores get _value => super._value as NoStores;
}

/// @nodoc

class _$NoStores implements NoStores {
  const _$NoStores();

  @override
  String toString() {
    return 'StoreManagerFailure.noStores()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoStores);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() noStores,
  }) {
    return noStores();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? noStores,
    required TResult orElse(),
  }) {
    if (noStores != null) {
      return noStores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoStores value) noStores,
  }) {
    return noStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoStores value)? noStores,
    required TResult orElse(),
  }) {
    if (noStores != null) {
      return noStores(this);
    }
    return orElse();
  }
}

abstract class NoStores implements StoreManagerFailure {
  const factory NoStores() = _$NoStores;
}
