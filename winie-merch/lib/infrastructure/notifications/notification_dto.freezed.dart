// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) {
  return _NotificationDTO.fromJson(json);
}

/// @nodoc
class _$NotificationDTOTearOff {
  const _$NotificationDTOTearOff();

  _NotificationDTO call(
      {required int notificationId,
      required String? notificationTitle,
      required String? notificationBody,
      required Map<String, dynamic> notificationData}) {
    return _NotificationDTO(
      notificationId: notificationId,
      notificationTitle: notificationTitle,
      notificationBody: notificationBody,
      notificationData: notificationData,
    );
  }

  NotificationDTO fromJson(Map<String, Object> json) {
    return NotificationDTO.fromJson(json);
  }
}

/// @nodoc
const $NotificationDTO = _$NotificationDTOTearOff();

/// @nodoc
mixin _$NotificationDTO {
  int get notificationId => throw _privateConstructorUsedError;
  String? get notificationTitle => throw _privateConstructorUsedError;
  String? get notificationBody => throw _privateConstructorUsedError;
  Map<String, dynamic> get notificationData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDTOCopyWith<NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDTOCopyWith<$Res> {
  factory $NotificationDTOCopyWith(
          NotificationDTO value, $Res Function(NotificationDTO) then) =
      _$NotificationDTOCopyWithImpl<$Res>;
  $Res call(
      {int notificationId,
      String? notificationTitle,
      String? notificationBody,
      Map<String, dynamic> notificationData});
}

/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._value, this._then);

  final NotificationDTO _value;
  // ignore: unused_field
  final $Res Function(NotificationDTO) _then;

  @override
  $Res call({
    Object? notificationId = freezed,
    Object? notificationTitle = freezed,
    Object? notificationBody = freezed,
    Object? notificationData = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      notificationTitle: notificationTitle == freezed
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationBody: notificationBody == freezed
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationData: notificationData == freezed
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDTOCopyWith<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  factory _$NotificationDTOCopyWith(
          _NotificationDTO value, $Res Function(_NotificationDTO) then) =
      __$NotificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int notificationId,
      String? notificationTitle,
      String? notificationBody,
      Map<String, dynamic> notificationData});
}

/// @nodoc
class __$NotificationDTOCopyWithImpl<$Res>
    extends _$NotificationDTOCopyWithImpl<$Res>
    implements _$NotificationDTOCopyWith<$Res> {
  __$NotificationDTOCopyWithImpl(
      _NotificationDTO _value, $Res Function(_NotificationDTO) _then)
      : super(_value, (v) => _then(v as _NotificationDTO));

  @override
  _NotificationDTO get _value => super._value as _NotificationDTO;

  @override
  $Res call({
    Object? notificationId = freezed,
    Object? notificationTitle = freezed,
    Object? notificationBody = freezed,
    Object? notificationData = freezed,
  }) {
    return _then(_NotificationDTO(
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      notificationTitle: notificationTitle == freezed
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationBody: notificationBody == freezed
          ? _value.notificationBody
          : notificationBody // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationData: notificationData == freezed
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDTO extends _NotificationDTO {
  const _$_NotificationDTO(
      {required this.notificationId,
      required this.notificationTitle,
      required this.notificationBody,
      required this.notificationData})
      : super._();

  factory _$_NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationDTOFromJson(json);

  @override
  final int notificationId;
  @override
  final String? notificationTitle;
  @override
  final String? notificationBody;
  @override
  final Map<String, dynamic> notificationData;

  @override
  String toString() {
    return 'NotificationDTO(notificationId: $notificationId, notificationTitle: $notificationTitle, notificationBody: $notificationBody, notificationData: $notificationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDTO &&
            (identical(other.notificationId, notificationId) ||
                const DeepCollectionEquality()
                    .equals(other.notificationId, notificationId)) &&
            (identical(other.notificationTitle, notificationTitle) ||
                const DeepCollectionEquality()
                    .equals(other.notificationTitle, notificationTitle)) &&
            (identical(other.notificationBody, notificationBody) ||
                const DeepCollectionEquality()
                    .equals(other.notificationBody, notificationBody)) &&
            (identical(other.notificationData, notificationData) ||
                const DeepCollectionEquality()
                    .equals(other.notificationData, notificationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationId) ^
      const DeepCollectionEquality().hash(notificationTitle) ^
      const DeepCollectionEquality().hash(notificationBody) ^
      const DeepCollectionEquality().hash(notificationData);

  @JsonKey(ignore: true)
  @override
  _$NotificationDTOCopyWith<_NotificationDTO> get copyWith =>
      __$NotificationDTOCopyWithImpl<_NotificationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDTOToJson(this);
  }
}

abstract class _NotificationDTO extends NotificationDTO {
  const factory _NotificationDTO(
      {required int notificationId,
      required String? notificationTitle,
      required String? notificationBody,
      required Map<String, dynamic> notificationData}) = _$_NotificationDTO;
  const _NotificationDTO._() : super._();

  factory _NotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_NotificationDTO.fromJson;

  @override
  int get notificationId => throw _privateConstructorUsedError;
  @override
  String? get notificationTitle => throw _privateConstructorUsedError;
  @override
  String? get notificationBody => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get notificationData =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDTOCopyWith<_NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
