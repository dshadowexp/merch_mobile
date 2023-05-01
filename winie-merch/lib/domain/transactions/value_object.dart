import 'package:winie_merch/domain/core/failures/failures.dart';
import 'package:winie_merch/domain/core/value_objects.dart';
import 'package:winie_merch/domain/core/validators/validators.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class Actor extends ValueObject<Identity> {
  @override
  final Either<ValueFailure<Identity>, Identity> value;

  factory Actor(Identity input) {
    assert(input != null);
    return Actor._(
      validateActorTransaction(input),
    );
  }

  const Actor._(this.value);
}

class Amount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Amount(double input) {
    assert(input != null);
    return Amount._(
      right(input),
    );
  }

  const Amount._(this.value);
}

class Currency extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  final int maxCurrencyCodeLength = 3;

  factory Currency(String input) {
    assert(input != null);
    return Currency._(
      right(input),
    );
  }

  const Currency._(this.value);
}

class VisibilityType extends ValueObject<String> {
  static const List<String> predefinedVisibilityTypes = [
    "Private",
    "Friends",
    "Public"
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory VisibilityType(String input) {
    assert(input != null);
    return VisibilityType._(
      validateIntrinsicType(input, predefinedVisibilityTypes),
    );
  }

  const VisibilityType._(this.value);
}

class TransactionAction extends ValueObject<String> {
  static const List<String> predefinedTransactionActions = ["Received", "Sent"];

  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionAction(String input) {
    assert(input != null);
    return TransactionAction._(
      validateIntrinsicType(input, predefinedTransactionActions),
    );
  }

  const TransactionAction._(this.value);
}

class TransactionPurpose extends ValueObject<String> {
  static const List<String> predefinedTransactionPurposes = [
    "Delivery",
    "Purchase",
    "Service",
    "Subscription",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionPurpose(String input) {
    assert(input != null);
    return TransactionPurpose._(
      validateIntrinsicType(input, predefinedTransactionPurposes),
    );
  }

  const TransactionPurpose._(this.value);
}

class TransactionId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionId() {
    return TransactionId._(right(Uuid().v1()));
  }

  factory TransactionId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return TransactionId._(right(uniqueId));
  }

  const TransactionId._(this.value);
}
