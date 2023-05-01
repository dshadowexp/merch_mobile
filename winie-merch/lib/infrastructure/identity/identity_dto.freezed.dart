// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'identity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdentityDTO _$IdentityDTOFromJson(Map<String, dynamic> json) {
  return _IdentityDTO.fromJson(json);
}

/// @nodoc
class _$IdentityDTOTearOff {
  const _$IdentityDTOTearOff();

  _IdentityDTO call(
      {String? id,
      String? phoneNumber,
      String? email,
      String? userName,
      String? photo}) {
    return _IdentityDTO(
      id: id,
      phoneNumber: phoneNumber,
      email: email,
      userName: userName,
      photo: photo,
    );
  }

  IdentityDTO fromJson(Map<String, Object> json) {
    return IdentityDTO.fromJson(json);
  }
}

/// @nodoc
const $IdentityDTO = _$IdentityDTOTearOff();

/// @nodoc
mixin _$IdentityDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityDTOCopyWith<IdentityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityDTOCopyWith<$Res> {
  factory $IdentityDTOCopyWith(
          IdentityDTO value, $Res Function(IdentityDTO) then) =
      _$IdentityDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? phoneNumber,
      String? email,
      String? userName,
      String? photo});
}

/// @nodoc
class _$IdentityDTOCopyWithImpl<$Res> implements $IdentityDTOCopyWith<$Res> {
  _$IdentityDTOCopyWithImpl(this._value, this._then);

  final IdentityDTO _value;
  // ignore: unused_field
  final $Res Function(IdentityDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$IdentityDTOCopyWith<$Res>
    implements $IdentityDTOCopyWith<$Res> {
  factory _$IdentityDTOCopyWith(
          _IdentityDTO value, $Res Function(_IdentityDTO) then) =
      __$IdentityDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? phoneNumber,
      String? email,
      String? userName,
      String? photo});
}

/// @nodoc
class __$IdentityDTOCopyWithImpl<$Res> extends _$IdentityDTOCopyWithImpl<$Res>
    implements _$IdentityDTOCopyWith<$Res> {
  __$IdentityDTOCopyWithImpl(
      _IdentityDTO _value, $Res Function(_IdentityDTO) _then)
      : super(_value, (v) => _then(v as _IdentityDTO));

  @override
  _IdentityDTO get _value => super._value as _IdentityDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_IdentityDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$_IdentityDTO extends _IdentityDTO {
  const _$_IdentityDTO(
      {this.id, this.phoneNumber, this.email, this.userName, this.photo})
      : super._();

  factory _$_IdentityDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_IdentityDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? userName;
  @override
  final String? photo;

  @override
  String toString() {
    return 'IdentityDTO(id: $id, phoneNumber: $phoneNumber, email: $email, userName: $userName, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdentityDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
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
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$IdentityDTOCopyWith<_IdentityDTO> get copyWith =>
      __$IdentityDTOCopyWithImpl<_IdentityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdentityDTOToJson(this);
  }
}

abstract class _IdentityDTO extends IdentityDTO {
  const factory _IdentityDTO(
      {String? id,
      String? phoneNumber,
      String? email,
      String? userName,
      String? photo}) = _$_IdentityDTO;
  const _IdentityDTO._() : super._();

  factory _IdentityDTO.fromJson(Map<String, dynamic> json) =
      _$_IdentityDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get photo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdentityDTOCopyWith<_IdentityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
