// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreEventTearOff {
  const _$StoreEventTearOff();

  _LoadStores loadStores() {
    return const _LoadStores();
  }

  _WatchStoresStarted watchStoreStarted(String storeId) {
    return _WatchStoresStarted(
      storeId,
    );
  }

  _ChangeCurrentStore changeCurrentStore(String storeId) {
    return _ChangeCurrentStore(
      storeId,
    );
  }

  _AcceptStorePartner acceptStorePartner(String partnerId) {
    return _AcceptStorePartner(
      partnerId,
    );
  }

  _DeclineStorePartner declineStorePartner(String partnerId) {
    return _DeclineStorePartner(
      partnerId,
    );
  }

  _StoresRecieved storeReceived(
      Either<StoreManagerFailure, Store> failureOrStore) {
    return _StoresRecieved(
      failureOrStore,
    );
  }
}

/// @nodoc
const $StoreEvent = _$StoreEventTearOff();

/// @nodoc
mixin _$StoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res> implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  final StoreEvent _value;
  // ignore: unused_field
  final $Res Function(StoreEvent) _then;
}

/// @nodoc
abstract class _$LoadStoresCopyWith<$Res> {
  factory _$LoadStoresCopyWith(
          _LoadStores value, $Res Function(_LoadStores) then) =
      __$LoadStoresCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadStoresCopyWithImpl<$Res> extends _$StoreEventCopyWithImpl<$Res>
    implements _$LoadStoresCopyWith<$Res> {
  __$LoadStoresCopyWithImpl(
      _LoadStores _value, $Res Function(_LoadStores) _then)
      : super(_value, (v) => _then(v as _LoadStores));

  @override
  _LoadStores get _value => super._value as _LoadStores;
}

/// @nodoc

class _$_LoadStores implements _LoadStores {
  const _$_LoadStores();

  @override
  String toString() {
    return 'StoreEvent.loadStores()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadStores);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return loadStores();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (loadStores != null) {
      return loadStores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return loadStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (loadStores != null) {
      return loadStores(this);
    }
    return orElse();
  }
}

abstract class _LoadStores implements StoreEvent {
  const factory _LoadStores() = _$_LoadStores;
}

/// @nodoc
abstract class _$WatchStoresStartedCopyWith<$Res> {
  factory _$WatchStoresStartedCopyWith(
          _WatchStoresStarted value, $Res Function(_WatchStoresStarted) then) =
      __$WatchStoresStartedCopyWithImpl<$Res>;
  $Res call({String storeId});
}

/// @nodoc
class __$WatchStoresStartedCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res>
    implements _$WatchStoresStartedCopyWith<$Res> {
  __$WatchStoresStartedCopyWithImpl(
      _WatchStoresStarted _value, $Res Function(_WatchStoresStarted) _then)
      : super(_value, (v) => _then(v as _WatchStoresStarted));

  @override
  _WatchStoresStarted get _value => super._value as _WatchStoresStarted;

  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_WatchStoresStarted(
      storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchStoresStarted implements _WatchStoresStarted {
  const _$_WatchStoresStarted(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'StoreEvent.watchStoreStarted(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchStoresStarted &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality().equals(other.storeId, storeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeId);

  @JsonKey(ignore: true)
  @override
  _$WatchStoresStartedCopyWith<_WatchStoresStarted> get copyWith =>
      __$WatchStoresStartedCopyWithImpl<_WatchStoresStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return watchStoreStarted(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (watchStoreStarted != null) {
      return watchStoreStarted(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return watchStoreStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (watchStoreStarted != null) {
      return watchStoreStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchStoresStarted implements StoreEvent {
  const factory _WatchStoresStarted(String storeId) = _$_WatchStoresStarted;

  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchStoresStartedCopyWith<_WatchStoresStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCurrentStoreCopyWith<$Res> {
  factory _$ChangeCurrentStoreCopyWith(
          _ChangeCurrentStore value, $Res Function(_ChangeCurrentStore) then) =
      __$ChangeCurrentStoreCopyWithImpl<$Res>;
  $Res call({String storeId});
}

/// @nodoc
class __$ChangeCurrentStoreCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res>
    implements _$ChangeCurrentStoreCopyWith<$Res> {
  __$ChangeCurrentStoreCopyWithImpl(
      _ChangeCurrentStore _value, $Res Function(_ChangeCurrentStore) _then)
      : super(_value, (v) => _then(v as _ChangeCurrentStore));

  @override
  _ChangeCurrentStore get _value => super._value as _ChangeCurrentStore;

  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_ChangeCurrentStore(
      storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCurrentStore implements _ChangeCurrentStore {
  const _$_ChangeCurrentStore(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'StoreEvent.changeCurrentStore(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCurrentStore &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality().equals(other.storeId, storeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeId);

  @JsonKey(ignore: true)
  @override
  _$ChangeCurrentStoreCopyWith<_ChangeCurrentStore> get copyWith =>
      __$ChangeCurrentStoreCopyWithImpl<_ChangeCurrentStore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return changeCurrentStore(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (changeCurrentStore != null) {
      return changeCurrentStore(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return changeCurrentStore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (changeCurrentStore != null) {
      return changeCurrentStore(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrentStore implements StoreEvent {
  const factory _ChangeCurrentStore(String storeId) = _$_ChangeCurrentStore;

  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCurrentStoreCopyWith<_ChangeCurrentStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptStorePartnerCopyWith<$Res> {
  factory _$AcceptStorePartnerCopyWith(
          _AcceptStorePartner value, $Res Function(_AcceptStorePartner) then) =
      __$AcceptStorePartnerCopyWithImpl<$Res>;
  $Res call({String partnerId});
}

/// @nodoc
class __$AcceptStorePartnerCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res>
    implements _$AcceptStorePartnerCopyWith<$Res> {
  __$AcceptStorePartnerCopyWithImpl(
      _AcceptStorePartner _value, $Res Function(_AcceptStorePartner) _then)
      : super(_value, (v) => _then(v as _AcceptStorePartner));

  @override
  _AcceptStorePartner get _value => super._value as _AcceptStorePartner;

  @override
  $Res call({
    Object? partnerId = freezed,
  }) {
    return _then(_AcceptStorePartner(
      partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AcceptStorePartner implements _AcceptStorePartner {
  const _$_AcceptStorePartner(this.partnerId);

  @override
  final String partnerId;

  @override
  String toString() {
    return 'StoreEvent.acceptStorePartner(partnerId: $partnerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AcceptStorePartner &&
            (identical(other.partnerId, partnerId) ||
                const DeepCollectionEquality()
                    .equals(other.partnerId, partnerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(partnerId);

  @JsonKey(ignore: true)
  @override
  _$AcceptStorePartnerCopyWith<_AcceptStorePartner> get copyWith =>
      __$AcceptStorePartnerCopyWithImpl<_AcceptStorePartner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return acceptStorePartner(partnerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (acceptStorePartner != null) {
      return acceptStorePartner(partnerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return acceptStorePartner(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (acceptStorePartner != null) {
      return acceptStorePartner(this);
    }
    return orElse();
  }
}

abstract class _AcceptStorePartner implements StoreEvent {
  const factory _AcceptStorePartner(String partnerId) = _$_AcceptStorePartner;

  String get partnerId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AcceptStorePartnerCopyWith<_AcceptStorePartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeclineStorePartnerCopyWith<$Res> {
  factory _$DeclineStorePartnerCopyWith(_DeclineStorePartner value,
          $Res Function(_DeclineStorePartner) then) =
      __$DeclineStorePartnerCopyWithImpl<$Res>;
  $Res call({String partnerId});
}

/// @nodoc
class __$DeclineStorePartnerCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res>
    implements _$DeclineStorePartnerCopyWith<$Res> {
  __$DeclineStorePartnerCopyWithImpl(
      _DeclineStorePartner _value, $Res Function(_DeclineStorePartner) _then)
      : super(_value, (v) => _then(v as _DeclineStorePartner));

  @override
  _DeclineStorePartner get _value => super._value as _DeclineStorePartner;

  @override
  $Res call({
    Object? partnerId = freezed,
  }) {
    return _then(_DeclineStorePartner(
      partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeclineStorePartner implements _DeclineStorePartner {
  const _$_DeclineStorePartner(this.partnerId);

  @override
  final String partnerId;

  @override
  String toString() {
    return 'StoreEvent.declineStorePartner(partnerId: $partnerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeclineStorePartner &&
            (identical(other.partnerId, partnerId) ||
                const DeepCollectionEquality()
                    .equals(other.partnerId, partnerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(partnerId);

  @JsonKey(ignore: true)
  @override
  _$DeclineStorePartnerCopyWith<_DeclineStorePartner> get copyWith =>
      __$DeclineStorePartnerCopyWithImpl<_DeclineStorePartner>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return declineStorePartner(partnerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (declineStorePartner != null) {
      return declineStorePartner(partnerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return declineStorePartner(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (declineStorePartner != null) {
      return declineStorePartner(this);
    }
    return orElse();
  }
}

abstract class _DeclineStorePartner implements StoreEvent {
  const factory _DeclineStorePartner(String partnerId) = _$_DeclineStorePartner;

  String get partnerId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeclineStorePartnerCopyWith<_DeclineStorePartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StoresRecievedCopyWith<$Res> {
  factory _$StoresRecievedCopyWith(
          _StoresRecieved value, $Res Function(_StoresRecieved) then) =
      __$StoresRecievedCopyWithImpl<$Res>;
  $Res call({Either<StoreManagerFailure, Store> failureOrStore});
}

/// @nodoc
class __$StoresRecievedCopyWithImpl<$Res> extends _$StoreEventCopyWithImpl<$Res>
    implements _$StoresRecievedCopyWith<$Res> {
  __$StoresRecievedCopyWithImpl(
      _StoresRecieved _value, $Res Function(_StoresRecieved) _then)
      : super(_value, (v) => _then(v as _StoresRecieved));

  @override
  _StoresRecieved get _value => super._value as _StoresRecieved;

  @override
  $Res call({
    Object? failureOrStore = freezed,
  }) {
    return _then(_StoresRecieved(
      failureOrStore == freezed
          ? _value.failureOrStore
          : failureOrStore // ignore: cast_nullable_to_non_nullable
              as Either<StoreManagerFailure, Store>,
    ));
  }
}

/// @nodoc

class _$_StoresRecieved implements _StoresRecieved {
  const _$_StoresRecieved(this.failureOrStore);

  @override
  final Either<StoreManagerFailure, Store> failureOrStore;

  @override
  String toString() {
    return 'StoreEvent.storeReceived(failureOrStore: $failureOrStore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoresRecieved &&
            (identical(other.failureOrStore, failureOrStore) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrStore, failureOrStore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrStore);

  @JsonKey(ignore: true)
  @override
  _$StoresRecievedCopyWith<_StoresRecieved> get copyWith =>
      __$StoresRecievedCopyWithImpl<_StoresRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStores,
    required TResult Function(String storeId) watchStoreStarted,
    required TResult Function(String storeId) changeCurrentStore,
    required TResult Function(String partnerId) acceptStorePartner,
    required TResult Function(String partnerId) declineStorePartner,
    required TResult Function(Either<StoreManagerFailure, Store> failureOrStore)
        storeReceived,
  }) {
    return storeReceived(failureOrStore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStores,
    TResult Function(String storeId)? watchStoreStarted,
    TResult Function(String storeId)? changeCurrentStore,
    TResult Function(String partnerId)? acceptStorePartner,
    TResult Function(String partnerId)? declineStorePartner,
    TResult Function(Either<StoreManagerFailure, Store> failureOrStore)?
        storeReceived,
    required TResult orElse(),
  }) {
    if (storeReceived != null) {
      return storeReceived(failureOrStore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStores value) loadStores,
    required TResult Function(_WatchStoresStarted value) watchStoreStarted,
    required TResult Function(_ChangeCurrentStore value) changeCurrentStore,
    required TResult Function(_AcceptStorePartner value) acceptStorePartner,
    required TResult Function(_DeclineStorePartner value) declineStorePartner,
    required TResult Function(_StoresRecieved value) storeReceived,
  }) {
    return storeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStores value)? loadStores,
    TResult Function(_WatchStoresStarted value)? watchStoreStarted,
    TResult Function(_ChangeCurrentStore value)? changeCurrentStore,
    TResult Function(_AcceptStorePartner value)? acceptStorePartner,
    TResult Function(_DeclineStorePartner value)? declineStorePartner,
    TResult Function(_StoresRecieved value)? storeReceived,
    required TResult orElse(),
  }) {
    if (storeReceived != null) {
      return storeReceived(this);
    }
    return orElse();
  }
}

abstract class _StoresRecieved implements StoreEvent {
  const factory _StoresRecieved(
      Either<StoreManagerFailure, Store> failureOrStore) = _$_StoresRecieved;

  Either<StoreManagerFailure, Store> get failureOrStore =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StoresRecievedCopyWith<_StoresRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreStateTearOff {
  const _$StoreStateTearOff();

  _StoreState call(
      {required StoreStatus status,
      required List<Store> stores,
      required Store? currentStore,
      required Map<String, Identity> partnerRequests,
      required Map<String, Identity> currentStorePartners,
      required bool isLoading}) {
    return _StoreState(
      status: status,
      stores: stores,
      currentStore: currentStore,
      partnerRequests: partnerRequests,
      currentStorePartners: currentStorePartners,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $StoreState = _$StoreStateTearOff();

/// @nodoc
mixin _$StoreState {
  StoreStatus get status => throw _privateConstructorUsedError;
  List<Store> get stores => throw _privateConstructorUsedError;
  Store? get currentStore => throw _privateConstructorUsedError;
  Map<String, Identity> get partnerRequests =>
      throw _privateConstructorUsedError;
  Map<String, Identity> get currentStorePartners =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreStateCopyWith<StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res>;
  $Res call(
      {StoreStatus status,
      List<Store> stores,
      Store? currentStore,
      Map<String, Identity> partnerRequests,
      Map<String, Identity> currentStorePartners,
      bool isLoading});

  $StoreCopyWith<$Res>? get currentStore;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res> implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  final StoreState _value;
  // ignore: unused_field
  final $Res Function(StoreState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? stores = freezed,
    Object? currentStore = freezed,
    Object? partnerRequests = freezed,
    Object? currentStorePartners = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreStatus,
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      currentStore: currentStore == freezed
          ? _value.currentStore
          : currentStore // ignore: cast_nullable_to_non_nullable
              as Store?,
      partnerRequests: partnerRequests == freezed
          ? _value.partnerRequests
          : partnerRequests // ignore: cast_nullable_to_non_nullable
              as Map<String, Identity>,
      currentStorePartners: currentStorePartners == freezed
          ? _value.currentStorePartners
          : currentStorePartners // ignore: cast_nullable_to_non_nullable
              as Map<String, Identity>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StoreCopyWith<$Res>? get currentStore {
    if (_value.currentStore == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.currentStore!, (value) {
      return _then(_value.copyWith(currentStore: value));
    });
  }
}

/// @nodoc
abstract class _$StoreStateCopyWith<$Res> implements $StoreStateCopyWith<$Res> {
  factory _$StoreStateCopyWith(
          _StoreState value, $Res Function(_StoreState) then) =
      __$StoreStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StoreStatus status,
      List<Store> stores,
      Store? currentStore,
      Map<String, Identity> partnerRequests,
      Map<String, Identity> currentStorePartners,
      bool isLoading});

  @override
  $StoreCopyWith<$Res>? get currentStore;
}

/// @nodoc
class __$StoreStateCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements _$StoreStateCopyWith<$Res> {
  __$StoreStateCopyWithImpl(
      _StoreState _value, $Res Function(_StoreState) _then)
      : super(_value, (v) => _then(v as _StoreState));

  @override
  _StoreState get _value => super._value as _StoreState;

  @override
  $Res call({
    Object? status = freezed,
    Object? stores = freezed,
    Object? currentStore = freezed,
    Object? partnerRequests = freezed,
    Object? currentStorePartners = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_StoreState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreStatus,
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      currentStore: currentStore == freezed
          ? _value.currentStore
          : currentStore // ignore: cast_nullable_to_non_nullable
              as Store?,
      partnerRequests: partnerRequests == freezed
          ? _value.partnerRequests
          : partnerRequests // ignore: cast_nullable_to_non_nullable
              as Map<String, Identity>,
      currentStorePartners: currentStorePartners == freezed
          ? _value.currentStorePartners
          : currentStorePartners // ignore: cast_nullable_to_non_nullable
              as Map<String, Identity>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StoreState implements _StoreState {
  const _$_StoreState(
      {required this.status,
      required this.stores,
      required this.currentStore,
      required this.partnerRequests,
      required this.currentStorePartners,
      required this.isLoading});

  @override
  final StoreStatus status;
  @override
  final List<Store> stores;
  @override
  final Store? currentStore;
  @override
  final Map<String, Identity> partnerRequests;
  @override
  final Map<String, Identity> currentStorePartners;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StoreState(status: $status, stores: $stores, currentStore: $currentStore, partnerRequests: $partnerRequests, currentStorePartners: $currentStorePartners, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.stores, stores) ||
                const DeepCollectionEquality().equals(other.stores, stores)) &&
            (identical(other.currentStore, currentStore) ||
                const DeepCollectionEquality()
                    .equals(other.currentStore, currentStore)) &&
            (identical(other.partnerRequests, partnerRequests) ||
                const DeepCollectionEquality()
                    .equals(other.partnerRequests, partnerRequests)) &&
            (identical(other.currentStorePartners, currentStorePartners) ||
                const DeepCollectionEquality().equals(
                    other.currentStorePartners, currentStorePartners)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(stores) ^
      const DeepCollectionEquality().hash(currentStore) ^
      const DeepCollectionEquality().hash(partnerRequests) ^
      const DeepCollectionEquality().hash(currentStorePartners) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$StoreStateCopyWith<_StoreState> get copyWith =>
      __$StoreStateCopyWithImpl<_StoreState>(this, _$identity);
}

abstract class _StoreState implements StoreState {
  const factory _StoreState(
      {required StoreStatus status,
      required List<Store> stores,
      required Store? currentStore,
      required Map<String, Identity> partnerRequests,
      required Map<String, Identity> currentStorePartners,
      required bool isLoading}) = _$_StoreState;

  @override
  StoreStatus get status => throw _privateConstructorUsedError;
  @override
  List<Store> get stores => throw _privateConstructorUsedError;
  @override
  Store? get currentStore => throw _privateConstructorUsedError;
  @override
  Map<String, Identity> get partnerRequests =>
      throw _privateConstructorUsedError;
  @override
  Map<String, Identity> get currentStorePartners =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreStateCopyWith<_StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
