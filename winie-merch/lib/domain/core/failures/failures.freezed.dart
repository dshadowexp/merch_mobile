// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _Number<T> number<T>(NumberValueFailure<T> f) {
    return _Number<T>(
      f,
    );
  }

  _String<T> string<T>(StringValueFailure<T> f) {
    return _String<T>(
      f,
    );
  }

  _Object<T> object<T>(ObjectValueFailure<T> f) {
    return _Object<T>(
      f,
    );
  }

  _Identity<T> user<T>(IdentityValueFailure<T> f) {
    return _Identity<T>(
      f,
    );
  }

  _Transaction<T> transaction<T>(TransactionValueFailure<T> f) {
    return _Transaction<T>(
      f,
    );
  }

  _Location<T> location<T>(LocationValueFailure<T> f) {
    return _Location<T>(
      f,
    );
  }

  _StoreManager<T> storeManager<T>(StoreManagerValueFailure<T> f) {
    return _StoreManager<T>(
      f,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$NumberCopyWith<T, $Res> {
  factory _$NumberCopyWith(_Number<T> value, $Res Function(_Number<T>) then) =
      __$NumberCopyWithImpl<T, $Res>;
  $Res call({NumberValueFailure<T> f});

  $NumberValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$NumberCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$NumberCopyWith<T, $Res> {
  __$NumberCopyWithImpl(_Number<T> _value, $Res Function(_Number<T>) _then)
      : super(_value, (v) => _then(v as _Number<T>));

  @override
  _Number<T> get _value => super._value as _Number<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Number<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as NumberValueFailure<T>,
    ));
  }

  @override
  $NumberValueFailureCopyWith<T, $Res> get f {
    return $NumberValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Number<T> implements _Number<T> {
  const _$_Number(this.f);

  @override
  final NumberValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.number(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Number<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$NumberCopyWith<T, _Number<T>> get copyWith =>
      __$NumberCopyWithImpl<T, _Number<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return number(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class _Number<T> implements ValueFailure<T> {
  const factory _Number(NumberValueFailure<T> f) = _$_Number<T>;

  NumberValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NumberCopyWith<T, _Number<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StringCopyWith<T, $Res> {
  factory _$StringCopyWith(_String<T> value, $Res Function(_String<T>) then) =
      __$StringCopyWithImpl<T, $Res>;
  $Res call({StringValueFailure<T> f});

  $StringValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$StringCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$StringCopyWith<T, $Res> {
  __$StringCopyWithImpl(_String<T> _value, $Res Function(_String<T>) _then)
      : super(_value, (v) => _then(v as _String<T>));

  @override
  _String<T> get _value => super._value as _String<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_String<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as StringValueFailure<T>,
    ));
  }

  @override
  $StringValueFailureCopyWith<T, $Res> get f {
    return $StringValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_String<T> implements _String<T> {
  const _$_String(this.f);

  @override
  final StringValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.string(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _String<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$StringCopyWith<T, _String<T>> get copyWith =>
      __$StringCopyWithImpl<T, _String<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return string(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class _String<T> implements ValueFailure<T> {
  const factory _String(StringValueFailure<T> f) = _$_String<T>;

  StringValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StringCopyWith<T, _String<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ObjectCopyWith<T, $Res> {
  factory _$ObjectCopyWith(_Object<T> value, $Res Function(_Object<T>) then) =
      __$ObjectCopyWithImpl<T, $Res>;
  $Res call({ObjectValueFailure<T> f});

  $ObjectValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$ObjectCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ObjectCopyWith<T, $Res> {
  __$ObjectCopyWithImpl(_Object<T> _value, $Res Function(_Object<T>) _then)
      : super(_value, (v) => _then(v as _Object<T>));

  @override
  _Object<T> get _value => super._value as _Object<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Object<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as ObjectValueFailure<T>,
    ));
  }

  @override
  $ObjectValueFailureCopyWith<T, $Res> get f {
    return $ObjectValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Object<T> implements _Object<T> {
  const _$_Object(this.f);

  @override
  final ObjectValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.object(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Object<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$ObjectCopyWith<T, _Object<T>> get copyWith =>
      __$ObjectCopyWithImpl<T, _Object<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return object(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (object != null) {
      return object(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return object(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (object != null) {
      return object(this);
    }
    return orElse();
  }
}

abstract class _Object<T> implements ValueFailure<T> {
  const factory _Object(ObjectValueFailure<T> f) = _$_Object<T>;

  ObjectValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ObjectCopyWith<T, _Object<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IdentityCopyWith<T, $Res> {
  factory _$IdentityCopyWith(
          _Identity<T> value, $Res Function(_Identity<T>) then) =
      __$IdentityCopyWithImpl<T, $Res>;
  $Res call({IdentityValueFailure<T> f});

  $IdentityValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$IdentityCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$IdentityCopyWith<T, $Res> {
  __$IdentityCopyWithImpl(
      _Identity<T> _value, $Res Function(_Identity<T>) _then)
      : super(_value, (v) => _then(v as _Identity<T>));

  @override
  _Identity<T> get _value => super._value as _Identity<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Identity<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as IdentityValueFailure<T>,
    ));
  }

  @override
  $IdentityValueFailureCopyWith<T, $Res> get f {
    return $IdentityValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Identity<T> implements _Identity<T> {
  const _$_Identity(this.f);

  @override
  final IdentityValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.user(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Identity<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$IdentityCopyWith<T, _Identity<T>> get copyWith =>
      __$IdentityCopyWithImpl<T, _Identity<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return user(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _Identity<T> implements ValueFailure<T> {
  const factory _Identity(IdentityValueFailure<T> f) = _$_Identity<T>;

  IdentityValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IdentityCopyWith<T, _Identity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionCopyWith<T, $Res> {
  factory _$TransactionCopyWith(
          _Transaction<T> value, $Res Function(_Transaction<T>) then) =
      __$TransactionCopyWithImpl<T, $Res>;
  $Res call({TransactionValueFailure<T> f});

  $TransactionValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$TransactionCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$TransactionCopyWith<T, $Res> {
  __$TransactionCopyWithImpl(
      _Transaction<T> _value, $Res Function(_Transaction<T>) _then)
      : super(_value, (v) => _then(v as _Transaction<T>));

  @override
  _Transaction<T> get _value => super._value as _Transaction<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Transaction<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as TransactionValueFailure<T>,
    ));
  }

  @override
  $TransactionValueFailureCopyWith<T, $Res> get f {
    return $TransactionValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Transaction<T> implements _Transaction<T> {
  const _$_Transaction(this.f);

  @override
  final TransactionValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.transaction(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<T, _Transaction<T>> get copyWith =>
      __$TransactionCopyWithImpl<T, _Transaction<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return transaction(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class _Transaction<T> implements ValueFailure<T> {
  const factory _Transaction(TransactionValueFailure<T> f) = _$_Transaction<T>;

  TransactionValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionCopyWith<T, _Transaction<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationCopyWith<T, $Res> {
  factory _$LocationCopyWith(
          _Location<T> value, $Res Function(_Location<T>) then) =
      __$LocationCopyWithImpl<T, $Res>;
  $Res call({LocationValueFailure<T> f});

  $LocationValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$LocationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$LocationCopyWith<T, $Res> {
  __$LocationCopyWithImpl(
      _Location<T> _value, $Res Function(_Location<T>) _then)
      : super(_value, (v) => _then(v as _Location<T>));

  @override
  _Location<T> get _value => super._value as _Location<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Location<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as LocationValueFailure<T>,
    ));
  }

  @override
  $LocationValueFailureCopyWith<T, $Res> get f {
    return $LocationValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Location<T> implements _Location<T> {
  const _$_Location(this.f);

  @override
  final LocationValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.location(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<T, _Location<T>> get copyWith =>
      __$LocationCopyWithImpl<T, _Location<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return location(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class _Location<T> implements ValueFailure<T> {
  const factory _Location(LocationValueFailure<T> f) = _$_Location<T>;

  LocationValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationCopyWith<T, _Location<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StoreManagerCopyWith<T, $Res> {
  factory _$StoreManagerCopyWith(
          _StoreManager<T> value, $Res Function(_StoreManager<T>) then) =
      __$StoreManagerCopyWithImpl<T, $Res>;
  $Res call({StoreManagerValueFailure<T> f});

  $StoreManagerValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$StoreManagerCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$StoreManagerCopyWith<T, $Res> {
  __$StoreManagerCopyWithImpl(
      _StoreManager<T> _value, $Res Function(_StoreManager<T>) _then)
      : super(_value, (v) => _then(v as _StoreManager<T>));

  @override
  _StoreManager<T> get _value => super._value as _StoreManager<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_StoreManager<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as StoreManagerValueFailure<T>,
    ));
  }

  @override
  $StoreManagerValueFailureCopyWith<T, $Res> get f {
    return $StoreManagerValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_StoreManager<T> implements _StoreManager<T> {
  const _$_StoreManager(this.f);

  @override
  final StoreManagerValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.storeManager(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreManager<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$StoreManagerCopyWith<T, _StoreManager<T>> get copyWith =>
      __$StoreManagerCopyWithImpl<T, _StoreManager<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NumberValueFailure<T> f) number,
    required TResult Function(StringValueFailure<T> f) string,
    required TResult Function(ObjectValueFailure<T> f) object,
    required TResult Function(IdentityValueFailure<T> f) user,
    required TResult Function(TransactionValueFailure<T> f) transaction,
    required TResult Function(LocationValueFailure<T> f) location,
    required TResult Function(StoreManagerValueFailure<T> f) storeManager,
  }) {
    return storeManager(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NumberValueFailure<T> f)? number,
    TResult Function(StringValueFailure<T> f)? string,
    TResult Function(ObjectValueFailure<T> f)? object,
    TResult Function(IdentityValueFailure<T> f)? user,
    TResult Function(TransactionValueFailure<T> f)? transaction,
    TResult Function(LocationValueFailure<T> f)? location,
    TResult Function(StoreManagerValueFailure<T> f)? storeManager,
    required TResult orElse(),
  }) {
    if (storeManager != null) {
      return storeManager(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Number<T> value) number,
    required TResult Function(_String<T> value) string,
    required TResult Function(_Object<T> value) object,
    required TResult Function(_Identity<T> value) user,
    required TResult Function(_Transaction<T> value) transaction,
    required TResult Function(_Location<T> value) location,
    required TResult Function(_StoreManager<T> value) storeManager,
  }) {
    return storeManager(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Number<T> value)? number,
    TResult Function(_String<T> value)? string,
    TResult Function(_Object<T> value)? object,
    TResult Function(_Identity<T> value)? user,
    TResult Function(_Transaction<T> value)? transaction,
    TResult Function(_Location<T> value)? location,
    TResult Function(_StoreManager<T> value)? storeManager,
    required TResult orElse(),
  }) {
    if (storeManager != null) {
      return storeManager(this);
    }
    return orElse();
  }
}

abstract class _StoreManager<T> implements ValueFailure<T> {
  const factory _StoreManager(StoreManagerValueFailure<T> f) =
      _$_StoreManager<T>;

  StoreManagerValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StoreManagerCopyWith<T, _StoreManager<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$IdentityValueFailureTearOff {
  const _$IdentityValueFailureTearOff();

  FileNotValidImage<T> fileNotValidImage<T>({required T failedValue}) {
    return FileNotValidImage<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $IdentityValueFailure = _$IdentityValueFailureTearOff();

/// @nodoc
mixin _$IdentityValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) fileNotValidImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? fileNotValidImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotValidImage<T> value) fileNotValidImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotValidImage<T> value)? fileNotValidImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdentityValueFailureCopyWith<T, IdentityValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityValueFailureCopyWith<T, $Res> {
  factory $IdentityValueFailureCopyWith(IdentityValueFailure<T> value,
          $Res Function(IdentityValueFailure<T>) then) =
      _$IdentityValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$IdentityValueFailureCopyWithImpl<T, $Res>
    implements $IdentityValueFailureCopyWith<T, $Res> {
  _$IdentityValueFailureCopyWithImpl(this._value, this._then);

  final IdentityValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(IdentityValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $FileNotValidImageCopyWith<T, $Res>
    implements $IdentityValueFailureCopyWith<T, $Res> {
  factory $FileNotValidImageCopyWith(FileNotValidImage<T> value,
          $Res Function(FileNotValidImage<T>) then) =
      _$FileNotValidImageCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$FileNotValidImageCopyWithImpl<T, $Res>
    extends _$IdentityValueFailureCopyWithImpl<T, $Res>
    implements $FileNotValidImageCopyWith<T, $Res> {
  _$FileNotValidImageCopyWithImpl(
      FileNotValidImage<T> _value, $Res Function(FileNotValidImage<T>) _then)
      : super(_value, (v) => _then(v as FileNotValidImage<T>));

  @override
  FileNotValidImage<T> get _value => super._value as FileNotValidImage<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(FileNotValidImage<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FileNotValidImage<T> implements FileNotValidImage<T> {
  const _$FileNotValidImage({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'IdentityValueFailure<$T>.fileNotValidImage(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileNotValidImage<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $FileNotValidImageCopyWith<T, FileNotValidImage<T>> get copyWith =>
      _$FileNotValidImageCopyWithImpl<T, FileNotValidImage<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) fileNotValidImage,
  }) {
    return fileNotValidImage(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? fileNotValidImage,
    required TResult orElse(),
  }) {
    if (fileNotValidImage != null) {
      return fileNotValidImage(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotValidImage<T> value) fileNotValidImage,
  }) {
    return fileNotValidImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotValidImage<T> value)? fileNotValidImage,
    required TResult orElse(),
  }) {
    if (fileNotValidImage != null) {
      return fileNotValidImage(this);
    }
    return orElse();
  }
}

abstract class FileNotValidImage<T> implements IdentityValueFailure<T> {
  const factory FileNotValidImage({required T failedValue}) =
      _$FileNotValidImage<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FileNotValidImageCopyWith<T, FileNotValidImage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionValueFailureTearOff {
  const _$TransactionValueFailureTearOff();

  InsufficientLength<T> insufficientLength<T>(
      {required T failedValue, required int min}) {
    return InsufficientLength<T>(
      failedValue: failedValue,
      min: min,
    );
  }

  InvalidTransaction<T> invalidTransaction<T>({required T failedValue}) {
    return InvalidTransaction<T>(
      failedValue: failedValue,
    );
  }

  InvalidTransactionType<T> invalidTransactionType<T>(
      {required T failedValue}) {
    return InvalidTransactionType<T>(
      failedValue: failedValue,
    );
  }

  InsufficientFunds<T> insufficientFunds<T>({required T failedValue}) {
    return InsufficientFunds<T>(
      failedValue: failedValue,
    );
  }

  InvalidMobileMoneyNumber<T> invalidMobileMoneyNumber<T>(
      {required T failedValue}) {
    return InvalidMobileMoneyNumber<T>(
      failedValue: failedValue,
    );
  }

  ServerError<T> serverError<T>({required T failedValue}) {
    return ServerError<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $TransactionValueFailure = _$TransactionValueFailureTearOff();

/// @nodoc
mixin _$TransactionValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionValueFailureCopyWith<T, TransactionValueFailure<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionValueFailureCopyWith<T, $Res> {
  factory $TransactionValueFailureCopyWith(TransactionValueFailure<T> value,
          $Res Function(TransactionValueFailure<T>) then) =
      _$TransactionValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  _$TransactionValueFailureCopyWithImpl(this._value, this._then);

  final TransactionValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(TransactionValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InsufficientLengthCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $InsufficientLengthCopyWith(InsufficientLength<T> value,
          $Res Function(InsufficientLength<T>) then) =
      _$InsufficientLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int min});
}

/// @nodoc
class _$InsufficientLengthCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $InsufficientLengthCopyWith<T, $Res> {
  _$InsufficientLengthCopyWithImpl(
      InsufficientLength<T> _value, $Res Function(InsufficientLength<T>) _then)
      : super(_value, (v) => _then(v as InsufficientLength<T>));

  @override
  InsufficientLength<T> get _value => super._value as InsufficientLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
  }) {
    return _then(InsufficientLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InsufficientLength<T> implements InsufficientLength<T> {
  const _$InsufficientLength({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.insufficientLength(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsufficientLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min);

  @JsonKey(ignore: true)
  @override
  $InsufficientLengthCopyWith<T, InsufficientLength<T>> get copyWith =>
      _$InsufficientLengthCopyWithImpl<T, InsufficientLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return insufficientLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (insufficientLength != null) {
      return insufficientLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return insufficientLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (insufficientLength != null) {
      return insufficientLength(this);
    }
    return orElse();
  }
}

abstract class InsufficientLength<T> implements TransactionValueFailure<T> {
  const factory InsufficientLength({required T failedValue, required int min}) =
      _$InsufficientLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InsufficientLengthCopyWith<T, InsufficientLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidTransactionCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $InvalidTransactionCopyWith(InvalidTransaction<T> value,
          $Res Function(InvalidTransaction<T>) then) =
      _$InvalidTransactionCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidTransactionCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $InvalidTransactionCopyWith<T, $Res> {
  _$InvalidTransactionCopyWithImpl(
      InvalidTransaction<T> _value, $Res Function(InvalidTransaction<T>) _then)
      : super(_value, (v) => _then(v as InvalidTransaction<T>));

  @override
  InvalidTransaction<T> get _value => super._value as InvalidTransaction<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidTransaction<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidTransaction<T> implements InvalidTransaction<T> {
  const _$InvalidTransaction({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.invalidTransaction(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidTransaction<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidTransactionCopyWith<T, InvalidTransaction<T>> get copyWith =>
      _$InvalidTransactionCopyWithImpl<T, InvalidTransaction<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return invalidTransaction(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (invalidTransaction != null) {
      return invalidTransaction(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return invalidTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidTransaction != null) {
      return invalidTransaction(this);
    }
    return orElse();
  }
}

abstract class InvalidTransaction<T> implements TransactionValueFailure<T> {
  const factory InvalidTransaction({required T failedValue}) =
      _$InvalidTransaction<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidTransactionCopyWith<T, InvalidTransaction<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidTransactionTypeCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $InvalidTransactionTypeCopyWith(InvalidTransactionType<T> value,
          $Res Function(InvalidTransactionType<T>) then) =
      _$InvalidTransactionTypeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidTransactionTypeCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $InvalidTransactionTypeCopyWith<T, $Res> {
  _$InvalidTransactionTypeCopyWithImpl(InvalidTransactionType<T> _value,
      $Res Function(InvalidTransactionType<T>) _then)
      : super(_value, (v) => _then(v as InvalidTransactionType<T>));

  @override
  InvalidTransactionType<T> get _value =>
      super._value as InvalidTransactionType<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidTransactionType<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidTransactionType<T> implements InvalidTransactionType<T> {
  const _$InvalidTransactionType({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.invalidTransactionType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidTransactionType<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidTransactionTypeCopyWith<T, InvalidTransactionType<T>> get copyWith =>
      _$InvalidTransactionTypeCopyWithImpl<T, InvalidTransactionType<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return invalidTransactionType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (invalidTransactionType != null) {
      return invalidTransactionType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return invalidTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidTransactionType != null) {
      return invalidTransactionType(this);
    }
    return orElse();
  }
}

abstract class InvalidTransactionType<T> implements TransactionValueFailure<T> {
  const factory InvalidTransactionType({required T failedValue}) =
      _$InvalidTransactionType<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidTransactionTypeCopyWith<T, InvalidTransactionType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsufficientFundsCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $InsufficientFundsCopyWith(InsufficientFunds<T> value,
          $Res Function(InsufficientFunds<T>) then) =
      _$InsufficientFundsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InsufficientFundsCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $InsufficientFundsCopyWith<T, $Res> {
  _$InsufficientFundsCopyWithImpl(
      InsufficientFunds<T> _value, $Res Function(InsufficientFunds<T>) _then)
      : super(_value, (v) => _then(v as InsufficientFunds<T>));

  @override
  InsufficientFunds<T> get _value => super._value as InsufficientFunds<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InsufficientFunds<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InsufficientFunds<T> implements InsufficientFunds<T> {
  const _$InsufficientFunds({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.insufficientFunds(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsufficientFunds<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InsufficientFundsCopyWith<T, InsufficientFunds<T>> get copyWith =>
      _$InsufficientFundsCopyWithImpl<T, InsufficientFunds<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return insufficientFunds(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (insufficientFunds != null) {
      return insufficientFunds(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return insufficientFunds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (insufficientFunds != null) {
      return insufficientFunds(this);
    }
    return orElse();
  }
}

abstract class InsufficientFunds<T> implements TransactionValueFailure<T> {
  const factory InsufficientFunds({required T failedValue}) =
      _$InsufficientFunds<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InsufficientFundsCopyWith<T, InsufficientFunds<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidMobileMoneyNumberCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $InvalidMobileMoneyNumberCopyWith(InvalidMobileMoneyNumber<T> value,
          $Res Function(InvalidMobileMoneyNumber<T>) then) =
      _$InvalidMobileMoneyNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidMobileMoneyNumberCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $InvalidMobileMoneyNumberCopyWith<T, $Res> {
  _$InvalidMobileMoneyNumberCopyWithImpl(InvalidMobileMoneyNumber<T> _value,
      $Res Function(InvalidMobileMoneyNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidMobileMoneyNumber<T>));

  @override
  InvalidMobileMoneyNumber<T> get _value =>
      super._value as InvalidMobileMoneyNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidMobileMoneyNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidMobileMoneyNumber<T> implements InvalidMobileMoneyNumber<T> {
  const _$InvalidMobileMoneyNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.invalidMobileMoneyNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidMobileMoneyNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidMobileMoneyNumberCopyWith<T, InvalidMobileMoneyNumber<T>>
      get copyWith => _$InvalidMobileMoneyNumberCopyWithImpl<T,
          InvalidMobileMoneyNumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return invalidMobileMoneyNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (invalidMobileMoneyNumber != null) {
      return invalidMobileMoneyNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return invalidMobileMoneyNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidMobileMoneyNumber != null) {
      return invalidMobileMoneyNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidMobileMoneyNumber<T>
    implements TransactionValueFailure<T> {
  const factory InvalidMobileMoneyNumber({required T failedValue}) =
      _$InvalidMobileMoneyNumber<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidMobileMoneyNumberCopyWith<T, InvalidMobileMoneyNumber<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<T, $Res>
    implements $TransactionValueFailureCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(
          ServerError<T> value, $Res Function(ServerError<T>) then) =
      _$ServerErrorCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<T, $Res>
    extends _$TransactionValueFailureCopyWithImpl<T, $Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(
      ServerError<T> _value, $Res Function(ServerError<T>) _then)
      : super(_value, (v) => _then(v as ServerError<T>));

  @override
  ServerError<T> get _value => super._value as ServerError<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ServerError<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ServerError<T> implements ServerError<T> {
  const _$ServerError({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransactionValueFailure<$T>.serverError(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<T, ServerError<T>> get copyWith =>
      _$ServerErrorCopyWithImpl<T, ServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int min) insufficientLength,
    required TResult Function(T failedValue) invalidTransaction,
    required TResult Function(T failedValue) invalidTransactionType,
    required TResult Function(T failedValue) insufficientFunds,
    required TResult Function(T failedValue) invalidMobileMoneyNumber,
    required TResult Function(T failedValue) serverError,
  }) {
    return serverError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int min)? insufficientLength,
    TResult Function(T failedValue)? invalidTransaction,
    TResult Function(T failedValue)? invalidTransactionType,
    TResult Function(T failedValue)? insufficientFunds,
    TResult Function(T failedValue)? invalidMobileMoneyNumber,
    TResult Function(T failedValue)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientLength<T> value) insufficientLength,
    required TResult Function(InvalidTransaction<T> value) invalidTransaction,
    required TResult Function(InvalidTransactionType<T> value)
        invalidTransactionType,
    required TResult Function(InsufficientFunds<T> value) insufficientFunds,
    required TResult Function(InvalidMobileMoneyNumber<T> value)
        invalidMobileMoneyNumber,
    required TResult Function(ServerError<T> value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientLength<T> value)? insufficientLength,
    TResult Function(InvalidTransaction<T> value)? invalidTransaction,
    TResult Function(InvalidTransactionType<T> value)? invalidTransactionType,
    TResult Function(InsufficientFunds<T> value)? insufficientFunds,
    TResult Function(InvalidMobileMoneyNumber<T> value)?
        invalidMobileMoneyNumber,
    TResult Function(ServerError<T> value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements TransactionValueFailure<T> {
  const factory ServerError({required T failedValue}) = _$ServerError<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<T, ServerError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationValueFailureTearOff {
  const _$LocationValueFailureTearOff();

  InvalidLocation<T> invalideLocation<T>({required T failedValue}) {
    return InvalidLocation<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $LocationValueFailure = _$LocationValueFailureTearOff();

/// @nodoc
mixin _$LocationValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalideLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalideLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidLocation<T> value) invalideLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidLocation<T> value)? invalideLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationValueFailureCopyWith<T, LocationValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationValueFailureCopyWith<T, $Res> {
  factory $LocationValueFailureCopyWith(LocationValueFailure<T> value,
          $Res Function(LocationValueFailure<T>) then) =
      _$LocationValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$LocationValueFailureCopyWithImpl<T, $Res>
    implements $LocationValueFailureCopyWith<T, $Res> {
  _$LocationValueFailureCopyWithImpl(this._value, this._then);

  final LocationValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(LocationValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidLocationCopyWith<T, $Res>
    implements $LocationValueFailureCopyWith<T, $Res> {
  factory $InvalidLocationCopyWith(
          InvalidLocation<T> value, $Res Function(InvalidLocation<T>) then) =
      _$InvalidLocationCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidLocationCopyWithImpl<T, $Res>
    extends _$LocationValueFailureCopyWithImpl<T, $Res>
    implements $InvalidLocationCopyWith<T, $Res> {
  _$InvalidLocationCopyWithImpl(
      InvalidLocation<T> _value, $Res Function(InvalidLocation<T>) _then)
      : super(_value, (v) => _then(v as InvalidLocation<T>));

  @override
  InvalidLocation<T> get _value => super._value as InvalidLocation<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidLocation<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidLocation<T> implements InvalidLocation<T> {
  const _$InvalidLocation({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'LocationValueFailure<$T>.invalideLocation(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidLocation<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidLocationCopyWith<T, InvalidLocation<T>> get copyWith =>
      _$InvalidLocationCopyWithImpl<T, InvalidLocation<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalideLocation,
  }) {
    return invalideLocation(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalideLocation,
    required TResult orElse(),
  }) {
    if (invalideLocation != null) {
      return invalideLocation(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidLocation<T> value) invalideLocation,
  }) {
    return invalideLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidLocation<T> value)? invalideLocation,
    required TResult orElse(),
  }) {
    if (invalideLocation != null) {
      return invalideLocation(this);
    }
    return orElse();
  }
}

abstract class InvalidLocation<T> implements LocationValueFailure<T> {
  const factory InvalidLocation({required T failedValue}) =
      _$InvalidLocation<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidLocationCopyWith<T, InvalidLocation<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreManagerValueFailureTearOff {
  const _$StoreManagerValueFailureTearOff();

  InvalidProductCategory<T> invalidProductCategory<T>(
      {required T failedValue}) {
    return InvalidProductCategory<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $StoreManagerValueFailure = _$StoreManagerValueFailureTearOff();

/// @nodoc
mixin _$StoreManagerValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidProductCategory<T> value)
        invalidProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidProductCategory<T> value)? invalidProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreManagerValueFailureCopyWith<T, StoreManagerValueFailure<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreManagerValueFailureCopyWith<T, $Res> {
  factory $StoreManagerValueFailureCopyWith(StoreManagerValueFailure<T> value,
          $Res Function(StoreManagerValueFailure<T>) then) =
      _$StoreManagerValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$StoreManagerValueFailureCopyWithImpl<T, $Res>
    implements $StoreManagerValueFailureCopyWith<T, $Res> {
  _$StoreManagerValueFailureCopyWithImpl(this._value, this._then);

  final StoreManagerValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(StoreManagerValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidProductCategoryCopyWith<T, $Res>
    implements $StoreManagerValueFailureCopyWith<T, $Res> {
  factory $InvalidProductCategoryCopyWith(InvalidProductCategory<T> value,
          $Res Function(InvalidProductCategory<T>) then) =
      _$InvalidProductCategoryCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidProductCategoryCopyWithImpl<T, $Res>
    extends _$StoreManagerValueFailureCopyWithImpl<T, $Res>
    implements $InvalidProductCategoryCopyWith<T, $Res> {
  _$InvalidProductCategoryCopyWithImpl(InvalidProductCategory<T> _value,
      $Res Function(InvalidProductCategory<T>) _then)
      : super(_value, (v) => _then(v as InvalidProductCategory<T>));

  @override
  InvalidProductCategory<T> get _value =>
      super._value as InvalidProductCategory<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidProductCategory<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidProductCategory<T> implements InvalidProductCategory<T> {
  const _$InvalidProductCategory({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'StoreManagerValueFailure<$T>.invalidProductCategory(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidProductCategory<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidProductCategoryCopyWith<T, InvalidProductCategory<T>> get copyWith =>
      _$InvalidProductCategoryCopyWithImpl<T, InvalidProductCategory<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidProductCategory,
  }) {
    return invalidProductCategory(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidProductCategory,
    required TResult orElse(),
  }) {
    if (invalidProductCategory != null) {
      return invalidProductCategory(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidProductCategory<T> value)
        invalidProductCategory,
  }) {
    return invalidProductCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidProductCategory<T> value)? invalidProductCategory,
    required TResult orElse(),
  }) {
    if (invalidProductCategory != null) {
      return invalidProductCategory(this);
    }
    return orElse();
  }
}

abstract class InvalidProductCategory<T>
    implements StoreManagerValueFailure<T> {
  const factory InvalidProductCategory({required T failedValue}) =
      _$InvalidProductCategory<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidProductCategoryCopyWith<T, InvalidProductCategory<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NumberValueFailureTearOff {
  const _$NumberValueFailureTearOff();

  InvalidPhoneNumber<T> invalidPhoneNumber<T>({required String failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

  InvalidAuthenticationCode<T> invalidAuthenticationCode<T>(
      {required String failedValue}) {
    return InvalidAuthenticationCode<T>(
      failedValue: failedValue,
    );
  }

  NumberBelowMinimum<T> numberBelowMinimum<T>({required int failedValue}) {
    return NumberBelowMinimum<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $NumberValueFailure = _$NumberValueFailureTearOff();

/// @nodoc
mixin _$NumberValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidPhoneNumber,
    required TResult Function(String failedValue) invalidAuthenticationCode,
    required TResult Function(int failedValue) numberBelowMinimum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidPhoneNumber,
    TResult Function(String failedValue)? invalidAuthenticationCode,
    TResult Function(int failedValue)? numberBelowMinimum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidAuthenticationCode<T> value)
        invalidAuthenticationCode,
    required TResult Function(NumberBelowMinimum<T> value) numberBelowMinimum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidAuthenticationCode<T> value)?
        invalidAuthenticationCode,
    TResult Function(NumberBelowMinimum<T> value)? numberBelowMinimum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberValueFailureCopyWith<T, $Res> {
  factory $NumberValueFailureCopyWith(NumberValueFailure<T> value,
          $Res Function(NumberValueFailure<T>) then) =
      _$NumberValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NumberValueFailureCopyWithImpl<T, $Res>
    implements $NumberValueFailureCopyWith<T, $Res> {
  _$NumberValueFailureCopyWithImpl(this._value, this._then);

  final NumberValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(NumberValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$NumberValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'NumberValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidPhoneNumber,
    required TResult Function(String failedValue) invalidAuthenticationCode,
    required TResult Function(int failedValue) numberBelowMinimum,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidPhoneNumber,
    TResult Function(String failedValue)? invalidAuthenticationCode,
    TResult Function(int failedValue)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidAuthenticationCode<T> value)
        invalidAuthenticationCode,
    required TResult Function(NumberBelowMinimum<T> value) numberBelowMinimum,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidAuthenticationCode<T> value)?
        invalidAuthenticationCode,
    TResult Function(NumberBelowMinimum<T> value)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements NumberValueFailure<T> {
  const factory InvalidPhoneNumber({required String failedValue}) =
      _$InvalidPhoneNumber<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidAuthenticationCodeCopyWith<T, $Res> {
  factory $InvalidAuthenticationCodeCopyWith(InvalidAuthenticationCode<T> value,
          $Res Function(InvalidAuthenticationCode<T>) then) =
      _$InvalidAuthenticationCodeCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidAuthenticationCodeCopyWithImpl<T, $Res>
    extends _$NumberValueFailureCopyWithImpl<T, $Res>
    implements $InvalidAuthenticationCodeCopyWith<T, $Res> {
  _$InvalidAuthenticationCodeCopyWithImpl(InvalidAuthenticationCode<T> _value,
      $Res Function(InvalidAuthenticationCode<T>) _then)
      : super(_value, (v) => _then(v as InvalidAuthenticationCode<T>));

  @override
  InvalidAuthenticationCode<T> get _value =>
      super._value as InvalidAuthenticationCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidAuthenticationCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidAuthenticationCode<T> implements InvalidAuthenticationCode<T> {
  const _$InvalidAuthenticationCode({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'NumberValueFailure<$T>.invalidAuthenticationCode(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidAuthenticationCode<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidAuthenticationCodeCopyWith<T, InvalidAuthenticationCode<T>>
      get copyWith => _$InvalidAuthenticationCodeCopyWithImpl<T,
          InvalidAuthenticationCode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidPhoneNumber,
    required TResult Function(String failedValue) invalidAuthenticationCode,
    required TResult Function(int failedValue) numberBelowMinimum,
  }) {
    return invalidAuthenticationCode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidPhoneNumber,
    TResult Function(String failedValue)? invalidAuthenticationCode,
    TResult Function(int failedValue)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (invalidAuthenticationCode != null) {
      return invalidAuthenticationCode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidAuthenticationCode<T> value)
        invalidAuthenticationCode,
    required TResult Function(NumberBelowMinimum<T> value) numberBelowMinimum,
  }) {
    return invalidAuthenticationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidAuthenticationCode<T> value)?
        invalidAuthenticationCode,
    TResult Function(NumberBelowMinimum<T> value)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (invalidAuthenticationCode != null) {
      return invalidAuthenticationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidAuthenticationCode<T> implements NumberValueFailure<T> {
  const factory InvalidAuthenticationCode({required String failedValue}) =
      _$InvalidAuthenticationCode<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidAuthenticationCodeCopyWith<T, InvalidAuthenticationCode<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberBelowMinimumCopyWith<T, $Res> {
  factory $NumberBelowMinimumCopyWith(NumberBelowMinimum<T> value,
          $Res Function(NumberBelowMinimum<T>) then) =
      _$NumberBelowMinimumCopyWithImpl<T, $Res>;
  $Res call({int failedValue});
}

/// @nodoc
class _$NumberBelowMinimumCopyWithImpl<T, $Res>
    extends _$NumberValueFailureCopyWithImpl<T, $Res>
    implements $NumberBelowMinimumCopyWith<T, $Res> {
  _$NumberBelowMinimumCopyWithImpl(
      NumberBelowMinimum<T> _value, $Res Function(NumberBelowMinimum<T>) _then)
      : super(_value, (v) => _then(v as NumberBelowMinimum<T>));

  @override
  NumberBelowMinimum<T> get _value => super._value as NumberBelowMinimum<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NumberBelowMinimum<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberBelowMinimum<T> implements NumberBelowMinimum<T> {
  const _$NumberBelowMinimum({required this.failedValue});

  @override
  final int failedValue;

  @override
  String toString() {
    return 'NumberValueFailure<$T>.numberBelowMinimum(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberBelowMinimum<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $NumberBelowMinimumCopyWith<T, NumberBelowMinimum<T>> get copyWith =>
      _$NumberBelowMinimumCopyWithImpl<T, NumberBelowMinimum<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidPhoneNumber,
    required TResult Function(String failedValue) invalidAuthenticationCode,
    required TResult Function(int failedValue) numberBelowMinimum,
  }) {
    return numberBelowMinimum(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidPhoneNumber,
    TResult Function(String failedValue)? invalidAuthenticationCode,
    TResult Function(int failedValue)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (numberBelowMinimum != null) {
      return numberBelowMinimum(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidAuthenticationCode<T> value)
        invalidAuthenticationCode,
    required TResult Function(NumberBelowMinimum<T> value) numberBelowMinimum,
  }) {
    return numberBelowMinimum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidAuthenticationCode<T> value)?
        invalidAuthenticationCode,
    TResult Function(NumberBelowMinimum<T> value)? numberBelowMinimum,
    required TResult orElse(),
  }) {
    if (numberBelowMinimum != null) {
      return numberBelowMinimum(this);
    }
    return orElse();
  }
}

abstract class NumberBelowMinimum<T> implements NumberValueFailure<T> {
  const factory NumberBelowMinimum({required int failedValue}) =
      _$NumberBelowMinimum<T>;

  int get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberBelowMinimumCopyWith<T, NumberBelowMinimum<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StringValueFailureTearOff {
  const _$StringValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({required T failedValure}) {
    return Multiline<T>(
      failedValure: failedValure,
    );
  }

  FileNotAvailable<T> fileNotAvailable<T>({required T failedValue}) {
    return FileNotAvailable<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $StringValueFailure = _$StringValueFailureTearOff();

/// @nodoc
mixin _$StringValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringValueFailureCopyWith<T, $Res> {
  factory $StringValueFailureCopyWith(StringValueFailure<T> value,
          $Res Function(StringValueFailure<T>) then) =
      _$StringValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StringValueFailureCopyWithImpl<T, $Res>
    implements $StringValueFailureCopyWith<T, $Res> {
  _$StringValueFailureCopyWithImpl(this._value, this._then);

  final StringValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(StringValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$StringValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'StringValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements StringValueFailure<T> {
  const factory ExceedingLength({required T failedValue, required int max}) =
      _$ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$StringValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'StringValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements StringValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({T failedValure});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$StringValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object? failedValure = freezed,
  }) {
    return _then(Multiline<T>(
      failedValure: failedValure == freezed
          ? _value.failedValure
          : failedValure // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValure});

  @override
  final T failedValure;

  @override
  String toString() {
    return 'StringValueFailure<$T>.multiline(failedValure: $failedValure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValure, failedValure) ||
                const DeepCollectionEquality()
                    .equals(other.failedValure, failedValure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValure);

  @JsonKey(ignore: true)
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return multiline(failedValure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements StringValueFailure<T> {
  const factory Multiline({required T failedValure}) = _$Multiline<T>;

  T get failedValure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileNotAvailableCopyWith<T, $Res> {
  factory $FileNotAvailableCopyWith(
          FileNotAvailable<T> value, $Res Function(FileNotAvailable<T>) then) =
      _$FileNotAvailableCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$FileNotAvailableCopyWithImpl<T, $Res>
    extends _$StringValueFailureCopyWithImpl<T, $Res>
    implements $FileNotAvailableCopyWith<T, $Res> {
  _$FileNotAvailableCopyWithImpl(
      FileNotAvailable<T> _value, $Res Function(FileNotAvailable<T>) _then)
      : super(_value, (v) => _then(v as FileNotAvailable<T>));

  @override
  FileNotAvailable<T> get _value => super._value as FileNotAvailable<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(FileNotAvailable<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FileNotAvailable<T> implements FileNotAvailable<T> {
  const _$FileNotAvailable({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'StringValueFailure<$T>.fileNotAvailable(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileNotAvailable<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $FileNotAvailableCopyWith<T, FileNotAvailable<T>> get copyWith =>
      _$FileNotAvailableCopyWithImpl<T, FileNotAvailable<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return fileNotAvailable(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (fileNotAvailable != null) {
      return fileNotAvailable(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) {
    return fileNotAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (fileNotAvailable != null) {
      return fileNotAvailable(this);
    }
    return orElse();
  }
}

abstract class FileNotAvailable<T> implements StringValueFailure<T> {
  const factory FileNotAvailable({required T failedValue}) =
      _$FileNotAvailable<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileNotAvailableCopyWith<T, FileNotAvailable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$StringValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'StringValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValure) multiline,
    required TResult Function(T failedValue) fileNotAvailable,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValure)? multiline,
    TResult Function(T failedValue)? fileNotAvailable,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(FileNotAvailable<T> value) fileNotAvailable,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(FileNotAvailable<T> value)? fileNotAvailable,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements StringValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ObjectValueFailureTearOff {
  const _$ObjectValueFailureTearOff();

  InvalidIntrinsicType<T> invalidIntrinsicType<T>(
      {required String failedValue}) {
    return InvalidIntrinsicType<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ObjectValueFailure = _$ObjectValueFailureTearOff();

/// @nodoc
mixin _$ObjectValueFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidIntrinsicType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidIntrinsicType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidIntrinsicType<T> value)
        invalidIntrinsicType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidIntrinsicType<T> value)? invalidIntrinsicType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectValueFailureCopyWith<T, ObjectValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectValueFailureCopyWith<T, $Res> {
  factory $ObjectValueFailureCopyWith(ObjectValueFailure<T> value,
          $Res Function(ObjectValueFailure<T>) then) =
      _$ObjectValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ObjectValueFailureCopyWithImpl<T, $Res>
    implements $ObjectValueFailureCopyWith<T, $Res> {
  _$ObjectValueFailureCopyWithImpl(this._value, this._then);

  final ObjectValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ObjectValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidIntrinsicTypeCopyWith<T, $Res>
    implements $ObjectValueFailureCopyWith<T, $Res> {
  factory $InvalidIntrinsicTypeCopyWith(InvalidIntrinsicType<T> value,
          $Res Function(InvalidIntrinsicType<T>) then) =
      _$InvalidIntrinsicTypeCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidIntrinsicTypeCopyWithImpl<T, $Res>
    extends _$ObjectValueFailureCopyWithImpl<T, $Res>
    implements $InvalidIntrinsicTypeCopyWith<T, $Res> {
  _$InvalidIntrinsicTypeCopyWithImpl(InvalidIntrinsicType<T> _value,
      $Res Function(InvalidIntrinsicType<T>) _then)
      : super(_value, (v) => _then(v as InvalidIntrinsicType<T>));

  @override
  InvalidIntrinsicType<T> get _value => super._value as InvalidIntrinsicType<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidIntrinsicType<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidIntrinsicType<T> implements InvalidIntrinsicType<T> {
  const _$InvalidIntrinsicType({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ObjectValueFailure<$T>.invalidIntrinsicType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidIntrinsicType<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidIntrinsicTypeCopyWith<T, InvalidIntrinsicType<T>> get copyWith =>
      _$InvalidIntrinsicTypeCopyWithImpl<T, InvalidIntrinsicType<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidIntrinsicType,
  }) {
    return invalidIntrinsicType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidIntrinsicType,
    required TResult orElse(),
  }) {
    if (invalidIntrinsicType != null) {
      return invalidIntrinsicType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidIntrinsicType<T> value)
        invalidIntrinsicType,
  }) {
    return invalidIntrinsicType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidIntrinsicType<T> value)? invalidIntrinsicType,
    required TResult orElse(),
  }) {
    if (invalidIntrinsicType != null) {
      return invalidIntrinsicType(this);
    }
    return orElse();
  }
}

abstract class InvalidIntrinsicType<T> implements ObjectValueFailure<T> {
  const factory InvalidIntrinsicType({required String failedValue}) =
      _$InvalidIntrinsicType<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidIntrinsicTypeCopyWith<T, InvalidIntrinsicType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
