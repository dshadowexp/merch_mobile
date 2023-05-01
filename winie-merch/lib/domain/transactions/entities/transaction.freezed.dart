// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required UniqueId id,
      required String accountNumber,
      required String amount,
      required String currency,
      required String code,
      required int purpose}) {
    return _Transaction(
      id: id,
      accountNumber: accountNumber,
      amount: amount,
      currency: currency,
      code: code,
      purpose: purpose,
    );
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  UniqueId get id => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get purpose => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String accountNumber,
      String amount,
      String currency,
      String code,
      int purpose});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? code = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String accountNumber,
      String amount,
      String currency,
      String code,
      int purpose});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountNumber = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? code = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.accountNumber,
      required this.amount,
      required this.currency,
      required this.code,
      required this.purpose})
      : super._();

  @override
  final UniqueId id;
  @override
  final String accountNumber;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String code;
  @override
  final int purpose;

  @override
  String toString() {
    return 'Transaction(id: $id, accountNumber: $accountNumber, amount: $amount, currency: $currency, code: $code, purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(purpose);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required UniqueId id,
      required String accountNumber,
      required String amount,
      required String currency,
      required String code,
      required int purpose}) = _$_Transaction;
  const _Transaction._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get accountNumber => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionHistoryTearOff {
  const _$TransactionHistoryTearOff();

  _TransactionHistory call(
      {required int type,
      required String actionId,
      required String createdAt,
      required String description,
      required double amount}) {
    return _TransactionHistory(
      type: type,
      actionId: actionId,
      createdAt: createdAt,
      description: description,
      amount: amount,
    );
  }
}

/// @nodoc
const $TransactionHistory = _$TransactionHistoryTearOff();

/// @nodoc
mixin _$TransactionHistory {
  int get type => throw _privateConstructorUsedError;
  String get actionId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionHistoryCopyWith<TransactionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryCopyWith<$Res> {
  factory $TransactionHistoryCopyWith(
          TransactionHistory value, $Res Function(TransactionHistory) then) =
      _$TransactionHistoryCopyWithImpl<$Res>;
  $Res call(
      {int type,
      String actionId,
      String createdAt,
      String description,
      double amount});
}

/// @nodoc
class _$TransactionHistoryCopyWithImpl<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  _$TransactionHistoryCopyWithImpl(this._value, this._then);

  final TransactionHistory _value;
  // ignore: unused_field
  final $Res Function(TransactionHistory) _then;

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
abstract class _$TransactionHistoryCopyWith<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  factory _$TransactionHistoryCopyWith(
          _TransactionHistory value, $Res Function(_TransactionHistory) then) =
      __$TransactionHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int type,
      String actionId,
      String createdAt,
      String description,
      double amount});
}

/// @nodoc
class __$TransactionHistoryCopyWithImpl<$Res>
    extends _$TransactionHistoryCopyWithImpl<$Res>
    implements _$TransactionHistoryCopyWith<$Res> {
  __$TransactionHistoryCopyWithImpl(
      _TransactionHistory _value, $Res Function(_TransactionHistory) _then)
      : super(_value, (v) => _then(v as _TransactionHistory));

  @override
  _TransactionHistory get _value => super._value as _TransactionHistory;

  @override
  $Res call({
    Object? type = freezed,
    Object? actionId = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TransactionHistory(
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

class _$_TransactionHistory extends _TransactionHistory {
  const _$_TransactionHistory(
      {required this.type,
      required this.actionId,
      required this.createdAt,
      required this.description,
      required this.amount})
      : super._();

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
    return 'TransactionHistory(type: $type, actionId: $actionId, createdAt: $createdAt, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionHistory &&
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
  _$TransactionHistoryCopyWith<_TransactionHistory> get copyWith =>
      __$TransactionHistoryCopyWithImpl<_TransactionHistory>(this, _$identity);
}

abstract class _TransactionHistory extends TransactionHistory {
  const factory _TransactionHistory(
      {required int type,
      required String actionId,
      required String createdAt,
      required String description,
      required double amount}) = _$_TransactionHistory;
  const _TransactionHistory._() : super._();

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
  _$TransactionHistoryCopyWith<_TransactionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
