import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_failures.dart';
part 'string_failures.dart';
part 'object_failures.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.number(NumberValueFailure<T> f) = _Number<T>;
  const factory ValueFailure.string(StringValueFailure<T> f) = _String<T>;
  const factory ValueFailure.object(ObjectValueFailure<T> f) = _Object<T>;
  const factory ValueFailure.user(IdentityValueFailure<T> f) = _Identity<T>;
  const factory ValueFailure.transaction(TransactionValueFailure<T> f) =
      _Transaction<T>;
  const factory ValueFailure.location(LocationValueFailure<T> f) = _Location<T>;
  const factory ValueFailure.storeManager(StoreManagerValueFailure<T> f) =
      _StoreManager<T>;
}

@freezed
abstract class IdentityValueFailure<T> with _$IdentityValueFailure<T> {
  const factory IdentityValueFailure.fileNotValidImage({
    required T failedValue,
  }) = FileNotValidImage<T>;
}

@freezed
abstract class TransactionValueFailure<T> with _$TransactionValueFailure<T> {
  const factory TransactionValueFailure.insufficientLength({
    required T failedValue,
    required int min,
  }) = InsufficientLength<T>;
  const factory TransactionValueFailure.invalidTransaction({
    required T failedValue,
  }) = InvalidTransaction<T>;
  const factory TransactionValueFailure.invalidTransactionType({
    required T failedValue,
  }) = InvalidTransactionType<T>;

  const factory TransactionValueFailure.insufficientFunds({
    required T failedValue,
  }) = InsufficientFunds<T>;

  const factory TransactionValueFailure.invalidMobileMoneyNumber({
    required T failedValue,
  }) = InvalidMobileMoneyNumber<T>;

  const factory TransactionValueFailure.serverError({
    required T failedValue,
  }) = ServerError<T>;
}

@freezed
abstract class LocationValueFailure<T> with _$LocationValueFailure<T> {
  const factory LocationValueFailure.invalideLocation({
    required T failedValue,
  }) = InvalidLocation<T>;
}

@freezed
abstract class StoreManagerValueFailure<T> with _$StoreManagerValueFailure<T> {
  const factory StoreManagerValueFailure.invalidProductCategory({
    required T failedValue,
  }) = InvalidProductCategory<T>;
}
