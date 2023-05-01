// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'identity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdentityEventTearOff {
  const _$IdentityEventTearOff();

  Retrieved getIdentity() {
    return const Retrieved();
  }

  IdentityRetrieved identityRetrieved(
      Either<IdentityFailure, Identity> failureOrIdentity) {
    return IdentityRetrieved(
      failureOrIdentity,
    );
  }
}

/// @nodoc
const $IdentityEvent = _$IdentityEventTearOff();

/// @nodoc
mixin _$IdentityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIdentity,
    required TResult Function(
            Either<IdentityFailure, Identity> failureOrIdentity)
        identityRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIdentity,
    TResult Function(Either<IdentityFailure, Identity> failureOrIdentity)?
        identityRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Retrieved value) getIdentity,
    required TResult Function(IdentityRetrieved value) identityRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Retrieved value)? getIdentity,
    TResult Function(IdentityRetrieved value)? identityRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityEventCopyWith<$Res> {
  factory $IdentityEventCopyWith(
          IdentityEvent value, $Res Function(IdentityEvent) then) =
      _$IdentityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdentityEventCopyWithImpl<$Res>
    implements $IdentityEventCopyWith<$Res> {
  _$IdentityEventCopyWithImpl(this._value, this._then);

  final IdentityEvent _value;
  // ignore: unused_field
  final $Res Function(IdentityEvent) _then;
}

/// @nodoc
abstract class $RetrievedCopyWith<$Res> {
  factory $RetrievedCopyWith(Retrieved value, $Res Function(Retrieved) then) =
      _$RetrievedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RetrievedCopyWithImpl<$Res> extends _$IdentityEventCopyWithImpl<$Res>
    implements $RetrievedCopyWith<$Res> {
  _$RetrievedCopyWithImpl(Retrieved _value, $Res Function(Retrieved) _then)
      : super(_value, (v) => _then(v as Retrieved));

  @override
  Retrieved get _value => super._value as Retrieved;
}

/// @nodoc

class _$Retrieved implements Retrieved {
  const _$Retrieved();

  @override
  String toString() {
    return 'IdentityEvent.getIdentity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Retrieved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIdentity,
    required TResult Function(
            Either<IdentityFailure, Identity> failureOrIdentity)
        identityRetrieved,
  }) {
    return getIdentity();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIdentity,
    TResult Function(Either<IdentityFailure, Identity> failureOrIdentity)?
        identityRetrieved,
    required TResult orElse(),
  }) {
    if (getIdentity != null) {
      return getIdentity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Retrieved value) getIdentity,
    required TResult Function(IdentityRetrieved value) identityRetrieved,
  }) {
    return getIdentity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Retrieved value)? getIdentity,
    TResult Function(IdentityRetrieved value)? identityRetrieved,
    required TResult orElse(),
  }) {
    if (getIdentity != null) {
      return getIdentity(this);
    }
    return orElse();
  }
}

abstract class Retrieved implements IdentityEvent {
  const factory Retrieved() = _$Retrieved;
}

/// @nodoc
abstract class $IdentityRetrievedCopyWith<$Res> {
  factory $IdentityRetrievedCopyWith(
          IdentityRetrieved value, $Res Function(IdentityRetrieved) then) =
      _$IdentityRetrievedCopyWithImpl<$Res>;
  $Res call({Either<IdentityFailure, Identity> failureOrIdentity});
}

/// @nodoc
class _$IdentityRetrievedCopyWithImpl<$Res>
    extends _$IdentityEventCopyWithImpl<$Res>
    implements $IdentityRetrievedCopyWith<$Res> {
  _$IdentityRetrievedCopyWithImpl(
      IdentityRetrieved _value, $Res Function(IdentityRetrieved) _then)
      : super(_value, (v) => _then(v as IdentityRetrieved));

  @override
  IdentityRetrieved get _value => super._value as IdentityRetrieved;

  @override
  $Res call({
    Object? failureOrIdentity = freezed,
  }) {
    return _then(IdentityRetrieved(
      failureOrIdentity == freezed
          ? _value.failureOrIdentity
          : failureOrIdentity // ignore: cast_nullable_to_non_nullable
              as Either<IdentityFailure, Identity>,
    ));
  }
}

/// @nodoc

class _$IdentityRetrieved implements IdentityRetrieved {
  const _$IdentityRetrieved(this.failureOrIdentity);

  @override
  final Either<IdentityFailure, Identity> failureOrIdentity;

  @override
  String toString() {
    return 'IdentityEvent.identityRetrieved(failureOrIdentity: $failureOrIdentity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdentityRetrieved &&
            (identical(other.failureOrIdentity, failureOrIdentity) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrIdentity, failureOrIdentity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrIdentity);

  @JsonKey(ignore: true)
  @override
  $IdentityRetrievedCopyWith<IdentityRetrieved> get copyWith =>
      _$IdentityRetrievedCopyWithImpl<IdentityRetrieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIdentity,
    required TResult Function(
            Either<IdentityFailure, Identity> failureOrIdentity)
        identityRetrieved,
  }) {
    return identityRetrieved(failureOrIdentity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIdentity,
    TResult Function(Either<IdentityFailure, Identity> failureOrIdentity)?
        identityRetrieved,
    required TResult orElse(),
  }) {
    if (identityRetrieved != null) {
      return identityRetrieved(failureOrIdentity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Retrieved value) getIdentity,
    required TResult Function(IdentityRetrieved value) identityRetrieved,
  }) {
    return identityRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Retrieved value)? getIdentity,
    TResult Function(IdentityRetrieved value)? identityRetrieved,
    required TResult orElse(),
  }) {
    if (identityRetrieved != null) {
      return identityRetrieved(this);
    }
    return orElse();
  }
}

abstract class IdentityRetrieved implements IdentityEvent {
  const factory IdentityRetrieved(
          Either<IdentityFailure, Identity> failureOrIdentity) =
      _$IdentityRetrieved;

  Either<IdentityFailure, Identity> get failureOrIdentity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityRetrievedCopyWith<IdentityRetrieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$IdentityStateTearOff {
  const _$IdentityStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Present present(Identity identity) {
    return Present(
      identity,
    );
  }

  NotSetUp notSetUp(User user) {
    return NotSetUp(
      user,
    );
  }

  RetrieveFailure retrieveFailure(IdentityFailure identityFailure) {
    return RetrieveFailure(
      identityFailure,
    );
  }
}

/// @nodoc
const $IdentityState = _$IdentityStateTearOff();

/// @nodoc
mixin _$IdentityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityStateCopyWith<$Res> {
  factory $IdentityStateCopyWith(
          IdentityState value, $Res Function(IdentityState) then) =
      _$IdentityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdentityStateCopyWithImpl<$Res>
    implements $IdentityStateCopyWith<$Res> {
  _$IdentityStateCopyWithImpl(this._value, this._then);

  final IdentityState _value;
  // ignore: unused_field
  final $Res Function(IdentityState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$IdentityStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'IdentityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements IdentityState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$IdentityStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'IdentityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements IdentityState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $PresentCopyWith<$Res> {
  factory $PresentCopyWith(Present value, $Res Function(Present) then) =
      _$PresentCopyWithImpl<$Res>;
  $Res call({Identity identity});

  $IdentityCopyWith<$Res> get identity;
}

/// @nodoc
class _$PresentCopyWithImpl<$Res> extends _$IdentityStateCopyWithImpl<$Res>
    implements $PresentCopyWith<$Res> {
  _$PresentCopyWithImpl(Present _value, $Res Function(Present) _then)
      : super(_value, (v) => _then(v as Present));

  @override
  Present get _value => super._value as Present;

  @override
  $Res call({
    Object? identity = freezed,
  }) {
    return _then(Present(
      identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Identity,
    ));
  }

  @override
  $IdentityCopyWith<$Res> get identity {
    return $IdentityCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value));
    });
  }
}

/// @nodoc

class _$Present implements Present {
  const _$Present(this.identity);

  @override
  final Identity identity;

  @override
  String toString() {
    return 'IdentityState.present(identity: $identity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Present &&
            (identical(other.identity, identity) ||
                const DeepCollectionEquality()
                    .equals(other.identity, identity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(identity);

  @JsonKey(ignore: true)
  @override
  $PresentCopyWith<Present> get copyWith =>
      _$PresentCopyWithImpl<Present>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) {
    return present(identity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(identity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) {
    return present(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(this);
    }
    return orElse();
  }
}

abstract class Present implements IdentityState {
  const factory Present(Identity identity) = _$Present;

  Identity get identity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentCopyWith<Present> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotSetUpCopyWith<$Res> {
  factory $NotSetUpCopyWith(NotSetUp value, $Res Function(NotSetUp) then) =
      _$NotSetUpCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$NotSetUpCopyWithImpl<$Res> extends _$IdentityStateCopyWithImpl<$Res>
    implements $NotSetUpCopyWith<$Res> {
  _$NotSetUpCopyWithImpl(NotSetUp _value, $Res Function(NotSetUp) _then)
      : super(_value, (v) => _then(v as NotSetUp));

  @override
  NotSetUp get _value => super._value as NotSetUp;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(NotSetUp(
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

class _$NotSetUp implements NotSetUp {
  const _$NotSetUp(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'IdentityState.notSetUp(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotSetUp &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $NotSetUpCopyWith<NotSetUp> get copyWith =>
      _$NotSetUpCopyWithImpl<NotSetUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) {
    return notSetUp(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) {
    return notSetUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (notSetUp != null) {
      return notSetUp(this);
    }
    return orElse();
  }
}

abstract class NotSetUp implements IdentityState {
  const factory NotSetUp(User user) = _$NotSetUp;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotSetUpCopyWith<NotSetUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveFailureCopyWith<$Res> {
  factory $RetrieveFailureCopyWith(
          RetrieveFailure value, $Res Function(RetrieveFailure) then) =
      _$RetrieveFailureCopyWithImpl<$Res>;
  $Res call({IdentityFailure identityFailure});

  $IdentityFailureCopyWith<$Res> get identityFailure;
}

/// @nodoc
class _$RetrieveFailureCopyWithImpl<$Res>
    extends _$IdentityStateCopyWithImpl<$Res>
    implements $RetrieveFailureCopyWith<$Res> {
  _$RetrieveFailureCopyWithImpl(
      RetrieveFailure _value, $Res Function(RetrieveFailure) _then)
      : super(_value, (v) => _then(v as RetrieveFailure));

  @override
  RetrieveFailure get _value => super._value as RetrieveFailure;

  @override
  $Res call({
    Object? identityFailure = freezed,
  }) {
    return _then(RetrieveFailure(
      identityFailure == freezed
          ? _value.identityFailure
          : identityFailure // ignore: cast_nullable_to_non_nullable
              as IdentityFailure,
    ));
  }

  @override
  $IdentityFailureCopyWith<$Res> get identityFailure {
    return $IdentityFailureCopyWith<$Res>(_value.identityFailure, (value) {
      return _then(_value.copyWith(identityFailure: value));
    });
  }
}

/// @nodoc

class _$RetrieveFailure implements RetrieveFailure {
  const _$RetrieveFailure(this.identityFailure);

  @override
  final IdentityFailure identityFailure;

  @override
  String toString() {
    return 'IdentityState.retrieveFailure(identityFailure: $identityFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RetrieveFailure &&
            (identical(other.identityFailure, identityFailure) ||
                const DeepCollectionEquality()
                    .equals(other.identityFailure, identityFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(identityFailure);

  @JsonKey(ignore: true)
  @override
  $RetrieveFailureCopyWith<RetrieveFailure> get copyWith =>
      _$RetrieveFailureCopyWithImpl<RetrieveFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Identity identity) present,
    required TResult Function(User user) notSetUp,
    required TResult Function(IdentityFailure identityFailure) retrieveFailure,
  }) {
    return retrieveFailure(identityFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Identity identity)? present,
    TResult Function(User user)? notSetUp,
    TResult Function(IdentityFailure identityFailure)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (retrieveFailure != null) {
      return retrieveFailure(identityFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Present value) present,
    required TResult Function(NotSetUp value) notSetUp,
    required TResult Function(RetrieveFailure value) retrieveFailure,
  }) {
    return retrieveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Present value)? present,
    TResult Function(NotSetUp value)? notSetUp,
    TResult Function(RetrieveFailure value)? retrieveFailure,
    required TResult orElse(),
  }) {
    if (retrieveFailure != null) {
      return retrieveFailure(this);
    }
    return orElse();
  }
}

abstract class RetrieveFailure implements IdentityState {
  const factory RetrieveFailure(IdentityFailure identityFailure) =
      _$RetrieveFailure;

  IdentityFailure get identityFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetrieveFailureCopyWith<RetrieveFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
