import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_manager_failure.freezed.dart';

@freezed
abstract class StoreManagerFailure with _$StoreManagerFailure {
  const factory StoreManagerFailure.serverError() = ServerError;
  const factory StoreManagerFailure.noStores() = NoStores;
}
