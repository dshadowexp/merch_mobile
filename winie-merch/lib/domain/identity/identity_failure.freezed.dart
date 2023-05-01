// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'identity_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdentityFailureTearOff {
  const _$IdentityFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _NotSetUp notSetUp(User user) {
    return _NotSetUp(
      user,
    );
  }
}

/// @nodoc
const $IdentityFailure = _$IdentityFailureTearOff();

/// @nodoc
mixin _$IdentityFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(User user) notSetUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(User user)? notSetUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NotSetUp value) notSetUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NotSetUp value)? notSetUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityFailureCopyWith<$Res> {
  factory $IdentityFailureCopyWith(
          IdentityFailure value, $Res Function(IdentityFailure) then) =
      _$IdentityFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdentityFailureCopyWithImpl<$Res>
    implements $IdentityFailureCopyWith<$Res> {
  _$IdentityFailureCopyWithImpl(this._value, this._then);

  final IdentityFailure _value;
  // ignore: unused_field
  final $Res Function(IdentityFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res>
    extends _$IdentityFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'IdentityFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(User user) notSetUp,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(User user)? notSetUp,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NotSetUp value) notSetUp,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NotSetUp value)? notSetUp,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements IdentityFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$NotSetUpCopyWith<$Res> {
  factory _$NotSetUpCopyWith(_NotSetUp value, $Res Function(_NotSetUp) then) =
      __$NotSetUpCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$NotSetUpCopyWithImpl<$Res> extends _$IdentityFailureCopyWithImpl<$Res>
    implements _$NotSetUpCopyWith<$Res> {
  __$NotSetUpCopyWithImpl(_NotSetUp _value, $Res Function(_NotSetUp) _then)
      : super(_value, (v) => _then(v as _NotSetUp));

  @override
  _NotSetUp get _value => super._value as _NotSetUp;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_NotSetUp(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_NotSetUp implements _NotSetUp {
  const _$_NotSetUp(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'IdentityFailure.notSetUp(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotSetUp &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$NotSetUpCopyWith<_NotSetUp> get copyWith =>
      __$NotSetUpCopyWithImpl<_NotSetUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(User user) notSetUp,
  }) {
    return notSetUp(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(User user)? notSetUp,
    required TResult orElse(),
  }) {
    if (notSetUp != null) {
      return notSetUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NotSetUp value) notSetUp,
  }) {
    return notSetUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NotSetUp value)? notSetUp,
    required TResult orElse(),
  }) {
    if (notSetUp != null) {
      return notSetUp(this);
    }
    return orElse();
  }
}

abstract class _NotSetUp implements IdentityFailure {
  const factory _NotSetUp(User user) = _$_NotSetUp;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NotSetUpCopyWith<_NotSetUp> get copyWith =>
      throw _privateConstructorUsedError;
}
