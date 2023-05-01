// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartFailureTearOff {
  const _$CartFailureTearOff();

  ItemAlreadyInCart itemAlreadyInCart() {
    return const ItemAlreadyInCart();
  }

  EmptyCartOperation emptyCartOperation() {
    return const EmptyCartOperation();
  }
}

/// @nodoc
const $CartFailure = _$CartFailureTearOff();

/// @nodoc
mixin _$CartFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemAlreadyInCart,
    required TResult Function() emptyCartOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemAlreadyInCart,
    TResult Function()? emptyCartOperation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemAlreadyInCart value) itemAlreadyInCart,
    required TResult Function(EmptyCartOperation value) emptyCartOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAlreadyInCart value)? itemAlreadyInCart,
    TResult Function(EmptyCartOperation value)? emptyCartOperation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartFailureCopyWith<$Res> {
  factory $CartFailureCopyWith(
          CartFailure value, $Res Function(CartFailure) then) =
      _$CartFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartFailureCopyWithImpl<$Res> implements $CartFailureCopyWith<$Res> {
  _$CartFailureCopyWithImpl(this._value, this._then);

  final CartFailure _value;
  // ignore: unused_field
  final $Res Function(CartFailure) _then;
}

/// @nodoc
abstract class $ItemAlreadyInCartCopyWith<$Res> {
  factory $ItemAlreadyInCartCopyWith(
          ItemAlreadyInCart value, $Res Function(ItemAlreadyInCart) then) =
      _$ItemAlreadyInCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemAlreadyInCartCopyWithImpl<$Res>
    extends _$CartFailureCopyWithImpl<$Res>
    implements $ItemAlreadyInCartCopyWith<$Res> {
  _$ItemAlreadyInCartCopyWithImpl(
      ItemAlreadyInCart _value, $Res Function(ItemAlreadyInCart) _then)
      : super(_value, (v) => _then(v as ItemAlreadyInCart));

  @override
  ItemAlreadyInCart get _value => super._value as ItemAlreadyInCart;
}

/// @nodoc

class _$ItemAlreadyInCart implements ItemAlreadyInCart {
  const _$ItemAlreadyInCart();

  @override
  String toString() {
    return 'CartFailure.itemAlreadyInCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ItemAlreadyInCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemAlreadyInCart,
    required TResult Function() emptyCartOperation,
  }) {
    return itemAlreadyInCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemAlreadyInCart,
    TResult Function()? emptyCartOperation,
    required TResult orElse(),
  }) {
    if (itemAlreadyInCart != null) {
      return itemAlreadyInCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemAlreadyInCart value) itemAlreadyInCart,
    required TResult Function(EmptyCartOperation value) emptyCartOperation,
  }) {
    return itemAlreadyInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAlreadyInCart value)? itemAlreadyInCart,
    TResult Function(EmptyCartOperation value)? emptyCartOperation,
    required TResult orElse(),
  }) {
    if (itemAlreadyInCart != null) {
      return itemAlreadyInCart(this);
    }
    return orElse();
  }
}

abstract class ItemAlreadyInCart implements CartFailure {
  const factory ItemAlreadyInCart() = _$ItemAlreadyInCart;
}

/// @nodoc
abstract class $EmptyCartOperationCopyWith<$Res> {
  factory $EmptyCartOperationCopyWith(
          EmptyCartOperation value, $Res Function(EmptyCartOperation) then) =
      _$EmptyCartOperationCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCartOperationCopyWithImpl<$Res>
    extends _$CartFailureCopyWithImpl<$Res>
    implements $EmptyCartOperationCopyWith<$Res> {
  _$EmptyCartOperationCopyWithImpl(
      EmptyCartOperation _value, $Res Function(EmptyCartOperation) _then)
      : super(_value, (v) => _then(v as EmptyCartOperation));

  @override
  EmptyCartOperation get _value => super._value as EmptyCartOperation;
}

/// @nodoc

class _$EmptyCartOperation implements EmptyCartOperation {
  const _$EmptyCartOperation();

  @override
  String toString() {
    return 'CartFailure.emptyCartOperation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyCartOperation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemAlreadyInCart,
    required TResult Function() emptyCartOperation,
  }) {
    return emptyCartOperation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemAlreadyInCart,
    TResult Function()? emptyCartOperation,
    required TResult orElse(),
  }) {
    if (emptyCartOperation != null) {
      return emptyCartOperation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemAlreadyInCart value) itemAlreadyInCart,
    required TResult Function(EmptyCartOperation value) emptyCartOperation,
  }) {
    return emptyCartOperation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemAlreadyInCart value)? itemAlreadyInCart,
    TResult Function(EmptyCartOperation value)? emptyCartOperation,
    required TResult orElse(),
  }) {
    if (emptyCartOperation != null) {
      return emptyCartOperation(this);
    }
    return orElse();
  }
}

abstract class EmptyCartOperation implements CartFailure {
  const factory EmptyCartOperation() = _$EmptyCartOperation;
}
