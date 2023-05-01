// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'identity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdentityTearOff {
  const _$IdentityTearOff();

  _Identity call(
      {String? id,
      String? email,
      String? phoneNumber,
      String? userName,
      String? photo}) {
    return _Identity(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      userName: userName,
      photo: photo,
    );
  }
}

/// @nodoc
const $Identity = _$IdentityTearOff();

/// @nodoc
mixin _$Identity {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdentityCopyWith<Identity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityCopyWith<$Res> {
  factory $IdentityCopyWith(Identity value, $Res Function(Identity) then) =
      _$IdentityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? email,
      String? phoneNumber,
      String? userName,
      String? photo});
}

/// @nodoc
class _$IdentityCopyWithImpl<$Res> implements $IdentityCopyWith<$Res> {
  _$IdentityCopyWithImpl(this._value, this._then);

  final Identity _value;
  // ignore: unused_field
  final $Res Function(Identity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$IdentityCopyWith<$Res> implements $IdentityCopyWith<$Res> {
  factory _$IdentityCopyWith(_Identity value, $Res Function(_Identity) then) =
      __$IdentityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? email,
      String? phoneNumber,
      String? userName,
      String? photo});
}

/// @nodoc
class __$IdentityCopyWithImpl<$Res> extends _$IdentityCopyWithImpl<$Res>
    implements _$IdentityCopyWith<$Res> {
  __$IdentityCopyWithImpl(_Identity _value, $Res Function(_Identity) _then)
      : super(_value, (v) => _then(v as _Identity));

  @override
  _Identity get _value => super._value as _Identity;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_Identity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Identity extends _Identity {
  const _$_Identity(
      {this.id, this.email, this.phoneNumber, this.userName, this.photo})
      : super._();

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? userName;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Identity(id: $id, email: $email, phoneNumber: $phoneNumber, userName: $userName, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Identity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$IdentityCopyWith<_Identity> get copyWith =>
      __$IdentityCopyWithImpl<_Identity>(this, _$identity);
}

abstract class _Identity extends Identity {
  const factory _Identity(
      {String? id,
      String? email,
      String? phoneNumber,
      String? userName,
      String? photo}) = _$_Identity;
  const _Identity._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get photo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdentityCopyWith<_Identity> get copyWith =>
      throw _privateConstructorUsedError;
}
