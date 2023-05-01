// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDTO _$TransactionDTOFromJson(Map<String, dynamic> json) {
  return _TransactionDTO.fromJson(json);
}

/// @nodoc
class _$TransactionDTOTearOff {
  const _$TransactionDTOTearOff();

  _TransactionDTO call(
      {required String id,
      required String accountNumber,
      required String code,
      required String amount,
      required String currency,
      required int purpose}) {
    return _TransactionDTO(
      id: id,
      accountNumber: accountNumber,
      code: code,
      amount: amount,
      currency: currency,
      purpose: purpose,
    );
  }

  TransactionDTO fromJson(Map<String, Object> json) {
    return TransactionDTO.fromJson(json);
  }
}

/// @nodoc
const $TransactionDTO = _$TransactionDTOTearOff();

/// @nodoc
mixin _$TransactionDTO {
  String get id => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get purpose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDTOCopyWith<TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDTOCopyWith<$Res> {
  factory $TransactionDTOCopyWith(
          TransactionDTO value, $Res Function(TransactionDTO) then) =
      _$TransactionDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String accountNumber,
      String code,
      String amount,
      String currency,
      int purpose});
}

/// @nodoc
class _$TransactionDTOCopyWithImpl<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  _$TransactionDTOCopyWithImpl(this._value, this._then);

  final TransactionDTO _value;
  // ignore: unused_field
  final $Res Function(TransactionDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountNumber = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDTOCopyWith<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  factory _$TransactionDTOCopyWith(
          _TransactionDTO value, $Res Function(_TransactionDTO) then) =
      __$TransactionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String accountNumber,
      String code,
      String amount,
      String currency,
      int purpose});
}

/// @nodoc
class __$TransactionDTOCopyWithImpl<$Res>
    extends _$TransactionDTOCopyWithImpl<$Res>
    implements _$TransactionDTOCopyWith<$Res> {
  __$TransactionDTOCopyWithImpl(
      _TransactionDTO _value, $Res Function(_TransactionDTO) _then)
      : super(_value, (v) => _then(v as _TransactionDTO));

  @override
  _TransactionDTO get _value => super._value as _TransactionDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountNumber = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_TransactionDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDTO extends _TransactionDTO {
  const _$_TransactionDTO(
      {required this.id,
      required this.accountNumber,
      required this.code,
      required this.amount,
      required this.currency,
      required this.purpose})
      : super._();

  factory _$_TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDTOFromJson(json);

  @override
  final String id;
  @override
  final String accountNumber;
  @override
  final String code;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final int purpose;

  @override
  String toString() {
    return 'TransactionDTO(id: $id, accountNumber: $accountNumber, code: $code, amount: $amount, currency: $currency, purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(purpose);

  @JsonKey(ignore: true)
  @override
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      __$TransactionDTOCopyWithImpl<_TransactionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDTOToJson(this);
  }
}

abstract class _TransactionDTO extends TransactionDTO {
  const factory _TransactionDTO(
      {required String id,
      required String accountNumber,
      required String code,
      required String amount,
      required String currency,
      required int purpose}) = _$_TransactionDTO;
  const _TransactionDTO._() : super._();

  factory _TransactionDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get accountNumber => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  int get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionHistoryDTO _$TransactionHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryDTO.fromJson(json);
}

/// @nodoc
class _$TransactionHistoryDTOTearOff {
  const _$TransactionHistoryDTOTearOff();

  _OrderHistoryDTO call(
      {required int type,
      required String actionId,
      required String createdAt,
      required String description,
      required double amount}) {
    return _OrderHistoryDTO(
      type: type,
      actionId: actionId,
      createdAt: createdAt,
      description: description,
      amount: amount,
    );
  }

  TransactionHistoryDTO fromJson(Map<String, Object> json) {
    return TransactionHistoryDTO.fromJson(json);
  }
}

/// @nodoc
const $TransactionHistoryDTO = _$TransactionHistoryDTOTearOff();

/// @nodoc
mixin _$TransactionHistoryDTO {
  int get type => throw _privateConstructorUsedError;
  String get actionId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryDTOCopyWith<TransactionHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryDTOCopyWith<$Res> {
  factory $TransactionHistoryDTOCopyWith(TransactionHistoryDTO value,
          $Res Function(TransactionHistoryDTO) then) =
      _$TransactionHistoryDTOCopyWithImpl<$Res>;
  $Res call(
      {int type,
      String actionId,
      String createdAt,
      String description,
      double amount});
}

/// @nodoc
class _$TransactionHistoryDTOCopyWithImpl<$Res>
    implements $TransactionHistoryDTOCopyWith<$Res> {
  _$TransactionHistoryDTOCopyWithImpl(this._value, this._then);

  final TransactionHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(TransactionHistoryDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? actionId = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      actionId: actionId == freezed
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$OrderHistoryDTOCopyWith<$Res>
    implements $TransactionHistoryDTOCopyWith<$Res> {
  factory _$OrderHistoryDTOCopyWith(
          _OrderHistoryDTO value, $Res Function(_OrderHistoryDTO) then) =
      __$OrderHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int type,
      String actionId,
      String createdAt,
      String description,
      double amount});
}

/// @nodoc
class __$OrderHistoryDTOCopyWithImpl<$Res>
    extends _$TransactionHistoryDTOCopyWithImpl<$Res>
    implements _$OrderHistoryDTOCopyWith<$Res> {
  __$OrderHistoryDTOCopyWithImpl(
      _OrderHistoryDTO _value, $Res Function(_OrderHistoryDTO) _then)
      : super(_value, (v) => _then(v as _OrderHistoryDTO));

  @override
  _OrderHistoryDTO get _value => super._value as _OrderHistoryDTO;

  @override
  $Res call({
    Object? type = freezed,
    Object? actionId = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_OrderHistoryDTO(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      actionId: actionId == freezed
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryDTO extends _OrderHistoryDTO {
  const _$_OrderHistoryDTO(
      {required this.type,
      required this.actionId,
      required this.createdAt,
      required this.description,
      required this.amount})
      : super._();

  factory _$_OrderHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderHistoryDTOFromJson(json);

  @override
  final int type;
  @override
  final String actionId;
  @override
  final String createdAt;
  @override
  final String description;
  @override
  final double amount;

  @override
  String toString() {
    return 'TransactionHistoryDTO(type: $type, actionId: $actionId, createdAt: $createdAt, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderHistoryDTO &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.actionId, actionId) ||
                const DeepCollectionEquality()
                    .equals(other.actionId, actionId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(actionId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryDTOCopyWith<_OrderHistoryDTO> get copyWith =>
      __$OrderHistoryDTOCopyWithImpl<_OrderHistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderHistoryDTOToJson(this);
  }
}

abstract class _OrderHistoryDTO extends TransactionHistoryDTO {
  const factory _OrderHistoryDTO(
      {required int type,
      required String actionId,
      required String createdAt,
      required String description,
      required double amount}) = _$_OrderHistoryDTO;
  const _OrderHistoryDTO._() : super._();

  factory _OrderHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryDTO.fromJson;

  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get actionId => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryDTOCopyWith<_OrderHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
