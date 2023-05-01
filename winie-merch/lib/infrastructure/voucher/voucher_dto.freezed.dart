// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'voucher_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoucherDTO _$VoucherDTOFromJson(Map<String, dynamic> json) {
  return _VoucherDTO.fromJson(json);
}

/// @nodoc
class _$VoucherDTOTearOff {
  const _$VoucherDTOTearOff();

  _VoucherDTO call(
      {required int type,
      required int userLimit,
      required String storeId,
      required List<String> users,
      required String voucherName,
      required String expiryDate,
      required Map<String, dynamic> payload}) {
    return _VoucherDTO(
      type: type,
      userLimit: userLimit,
      storeId: storeId,
      users: users,
      voucherName: voucherName,
      expiryDate: expiryDate,
      payload: payload,
    );
  }

  VoucherDTO fromJson(Map<String, Object> json) {
    return VoucherDTO.fromJson(json);
  }
}

/// @nodoc
const $VoucherDTO = _$VoucherDTOTearOff();

/// @nodoc
mixin _$VoucherDTO {
  int get type => throw _privateConstructorUsedError;
  int get userLimit => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherDTOCopyWith<VoucherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherDTOCopyWith<$Res> {
  factory $VoucherDTOCopyWith(
          VoucherDTO value, $Res Function(VoucherDTO) then) =
      _$VoucherDTOCopyWithImpl<$Res>;
  $Res call(
      {int type,
      int userLimit,
      String storeId,
      List<String> users,
      String voucherName,
      String expiryDate,
      Map<String, dynamic> payload});
}

/// @nodoc
class _$VoucherDTOCopyWithImpl<$Res> implements $VoucherDTOCopyWith<$Res> {
  _$VoucherDTOCopyWithImpl(this._value, this._then);

  final VoucherDTO _value;
  // ignore: unused_field
  final $Res Function(VoucherDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? userLimit = freezed,
    Object? storeId = freezed,
    Object? users = freezed,
    Object? voucherName = freezed,
    Object? expiryDate = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      userLimit: userLimit == freezed
          ? _value.userLimit
          : userLimit // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voucherName: voucherName == freezed
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$VoucherDTOCopyWith<$Res> implements $VoucherDTOCopyWith<$Res> {
  factory _$VoucherDTOCopyWith(
          _VoucherDTO value, $Res Function(_VoucherDTO) then) =
      __$VoucherDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int type,
      int userLimit,
      String storeId,
      List<String> users,
      String voucherName,
      String expiryDate,
      Map<String, dynamic> payload});
}

/// @nodoc
class __$VoucherDTOCopyWithImpl<$Res> extends _$VoucherDTOCopyWithImpl<$Res>
    implements _$VoucherDTOCopyWith<$Res> {
  __$VoucherDTOCopyWithImpl(
      _VoucherDTO _value, $Res Function(_VoucherDTO) _then)
      : super(_value, (v) => _then(v as _VoucherDTO));

  @override
  _VoucherDTO get _value => super._value as _VoucherDTO;

  @override
  $Res call({
    Object? type = freezed,
    Object? userLimit = freezed,
    Object? storeId = freezed,
    Object? users = freezed,
    Object? voucherName = freezed,
    Object? expiryDate = freezed,
    Object? payload = freezed,
  }) {
    return _then(_VoucherDTO(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      userLimit: userLimit == freezed
          ? _value.userLimit
          : userLimit // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      voucherName: voucherName == freezed
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoucherDTO extends _VoucherDTO {
  const _$_VoucherDTO(
      {required this.type,
      required this.userLimit,
      required this.storeId,
      required this.users,
      required this.voucherName,
      required this.expiryDate,
      required this.payload})
      : super._();

  factory _$_VoucherDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_VoucherDTOFromJson(json);

  @override
  final int type;
  @override
  final int userLimit;
  @override
  final String storeId;
  @override
  final List<String> users;
  @override
  final String voucherName;
  @override
  final String expiryDate;
  @override
  final Map<String, dynamic> payload;

  @override
  String toString() {
    return 'VoucherDTO(type: $type, userLimit: $userLimit, storeId: $storeId, users: $users, voucherName: $voucherName, expiryDate: $expiryDate, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VoucherDTO &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userLimit, userLimit) ||
                const DeepCollectionEquality()
                    .equals(other.userLimit, userLimit)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.voucherName, voucherName) ||
                const DeepCollectionEquality()
                    .equals(other.voucherName, voucherName)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userLimit) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(voucherName) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$VoucherDTOCopyWith<_VoucherDTO> get copyWith =>
      __$VoucherDTOCopyWithImpl<_VoucherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VoucherDTOToJson(this);
  }
}

abstract class _VoucherDTO extends VoucherDTO {
  const factory _VoucherDTO(
      {required int type,
      required int userLimit,
      required String storeId,
      required List<String> users,
      required String voucherName,
      required String expiryDate,
      required Map<String, dynamic> payload}) = _$_VoucherDTO;
  const _VoucherDTO._() : super._();

  factory _VoucherDTO.fromJson(Map<String, dynamic> json) =
      _$_VoucherDTO.fromJson;

  @override
  int get type => throw _privateConstructorUsedError;
  @override
  int get userLimit => throw _privateConstructorUsedError;
  @override
  String get storeId => throw _privateConstructorUsedError;
  @override
  List<String> get users => throw _privateConstructorUsedError;
  @override
  String get voucherName => throw _privateConstructorUsedError;
  @override
  String get expiryDate => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VoucherDTOCopyWith<_VoucherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
