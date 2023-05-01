import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winie_merch/domain/auth/value_objects.dart';
import 'package:winie_merch/domain/core/value_objects.dart';

part 'store.freezed.dart';

@freezed
abstract class Store implements _$Store {
  const Store._();

  const factory Store({
    required UniqueId id,
    required String name,
    required PhoneNumber phoneNumber,
    required String address,
    required String dynamicLink,
    required int cancelledOrders,
    required int completedOrders,
    required double currentbalance,
    required double totalBalance,
    required String merchmomoaccount,
    required String network,
    required String createdAt,
    required bool payoutRequested,
    required bool live,
    required String waitTime,
    required String owner,
    required List<String> partners,
    required List<String>? partnerRequests,
  }) = _Store;

  factory Store.empty() => Store(
        id: UniqueId(),
        name: '',
        phoneNumber: PhoneNumber(''),
        address: '',
        dynamicLink: '',
        createdAt: '',
        live: true,
        payoutRequested: false,
        cancelledOrders: 0,
        completedOrders: 0,
        currentbalance: 0.0,
        totalBalance: 0.0,
        merchmomoaccount: '',
        network: '',
        waitTime: '',
        owner: '',
        partners: [],
        partnerRequests: [],
      );
}
