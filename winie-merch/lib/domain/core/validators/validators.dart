import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/failures/failures.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';

part 'number_validators.dart';
part 'object_validators.dart';
part 'string_validators.dart';

Either<ValueFailure<double>, double> validateTransactionMinimum(
    double input, double minimumAmount) {
  if (input >= minimumAmount) {
    return right(input);
  } else {
    return left(ValueFailure.transaction(
        TransactionValueFailure.invalidTransaction(failedValue: input)));
  }
}

Either<ValueFailure<Identity>, Identity> validateActorTransaction(
    Identity input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.transaction(
        TransactionValueFailure.invalidTransaction(failedValue: input)));
  }
}

Either<ValueFailure<File>, File> validateFileAvailability(File input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.string(
        StringValueFailure.fileNotAvailable(failedValue: input)));
  }
}

Either<ValueFailure<File>, File> validateFileAsImage(File input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.user(
        IdentityValueFailure.fileNotValidImage(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
    String input, int minLength) {
  if (true) {
    return right(input);
  } else {
    return left(
      ValueFailure.transaction(
        TransactionValueFailure.insufficientLength(
            failedValue: input, min: minLength),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateEqualStringLength(
    String input, int exactLength) {
  if (input.length <= exactLength) {
    return right(input);
  } else {
    return left(ValueFailure.string(StringValueFailure.exceedingLength(
        failedValue: input, max: exactLength)));
  }
}

Either<ValueFailure<String>, String> validateProductCategoryType(
    String input, List<String> productCategoryTypes) {
  if (productCategoryTypes.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.storeManager(
        StoreManagerValueFailure.invalidProductCategory(failedValue: input)));
  }
}
