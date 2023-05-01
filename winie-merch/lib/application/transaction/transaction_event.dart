part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.charged(Transaction payment) = _Charged;
  const factory TransactionEvent.statusListened(String referenceId) =
      _StatusListened;
  const factory TransactionEvent.statusStopped() = _StatusStopped;
  const factory TransactionEvent.statusReceived(Map<String, String> payload) =
      _StatusReceived;
  const factory TransactionEvent.submittedOTP(String reference, String otp) =
      _SubmitOTP;
}
