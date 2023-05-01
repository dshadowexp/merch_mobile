import 'package:dartz/dartz.dart';
import 'package:winie_merch/domain/core/failures/failures.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

class OrderStatus extends ValueObject<String> {
  static const List<String> predefinedOrderTypes = [
    "pending",
    "confirmed",
    "ready",
    "requesting",
    "declined",
    "pickingup",
    "cancelled",
    "delivering",
    "completed",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory OrderStatus(String input) {
    assert(input != null);
    return OrderStatus._(
      validateIntrinsicType(input, predefinedOrderTypes),
    );
  }

  const OrderStatus._(this.value);
}
