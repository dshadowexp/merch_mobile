import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/failures/failures.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

import '../core/validators/validators.dart';

class ProductSize extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductSize(String input) {
    assert(input != null);
    return ProductSize._(validateMinStringLength(input, 0));
  }
  const ProductSize._(this.value);
}

class SubCategory extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SubCategory(String input) {
    assert(input != null);
    return SubCategory._(validateStringNotEmpty(input));
  }
  const SubCategory._(this.value);
}

class ProductPhotos<T> extends ValueObject<List<T>> {
  @override
  final Either<ValueFailure<List<T>>, List<T>> value;
  factory ProductPhotos(List<T> input) {
    assert(input != null);
    return ProductPhotos._(right(input));
  }
  const ProductPhotos._(this.value);
}

class DateUploaded extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DateUploaded() {
    return DateUploaded._(right(DateTime.now().toString()));
  }

  factory DateUploaded.fromString(String dateUploaded) {
    assert(dateUploaded != null);
    return DateUploaded._(right(dateUploaded));
  }
  const DateUploaded._(this.value);
}
