import 'package:winie_merch/domain/core/failures/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class NullStoreException extends Error {
  //if store does not exist
}

class NullPostException extends Error {
  //if a particular post does not exist

}
