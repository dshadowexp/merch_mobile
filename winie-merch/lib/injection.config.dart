// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_flow/auth_flow_bloc.dart' as _i31;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i24;
import 'application/identity/identity_bloc.dart' as _i19;
import 'application/orders/orders_bloc.dart' as _i21;
import 'application/orders/s_order/s_order_bloc.dart' as _i23;
import 'application/store_manager/product/product_bloc.dart' as _i22;
import 'application/store_manager/store/store_bloc.dart' as _i25;
import 'application/transaction/transaction_bloc.dart' as _i26;
import 'application/trip/trip_bloc.dart' as _i27;
import 'domain/auth/i_auth_repository.dart' as _i7;
import 'domain/identity/i_identity_repository.dart' as _i9;
import 'domain/navigation/i_trip_repository.dart' as _i17;
import 'domain/orders/i_order_repository.dart' as _i11;
import 'domain/store_manager/i_store_manager_repository.dart' as _i13;
import 'domain/transactions/i_transaction_repository.dart' as _i15;
import 'infrastructure/auth/firebase_auth_repository.dart' as _i8;
import 'infrastructure/core/app_data.dart' as _i30;
import 'infrastructure/core/firebase_injectable_module.dart' as _i32;
import 'infrastructure/core/uploads.dart' as _i28;
import 'infrastructure/identity/identity_repository.dart' as _i10;
import 'infrastructure/navigation/trip_repository.dart' as _i18;
import 'infrastructure/notifications/notification_repository.dart' as _i20;
import 'infrastructure/orders/order_repository.dart' as _i12;
import 'infrastructure/store_manager/store_manager_repository.dart' as _i14;
import 'infrastructure/transactions/transaction_repository.dart' as _i16;
import 'infrastructure/voucher/voucher_repository.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firestorage);
  gh.lazySingleton<_i7.IAuthRepository>(
      () => _i8.FirebaseAuthRepository(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i9.IIdentityRepository>(
      () => _i10.IdentityRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IOrderRepository>(
      () => _i12.OrderRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IStoreManagerRepository>(
      () => _i14.StoreManagerRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i15.ITransactionRepository>(
      () => _i16.TransactionRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i17.ITripRepository>(
      () => _i18.TripRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i19.IdentityBloc>(
      () => _i19.IdentityBloc(get<_i9.IIdentityRepository>()));
  gh.factory<_i20.NotificationRepository>(() => _i20.NotificationRepository(
      get<_i5.FirebaseMessaging>(), get<_i4.FirebaseFirestore>()));
  gh.factory<_i21.OrdersBloc>(
      () => _i21.OrdersBloc(get<_i11.IOrderRepository>()));
  gh.factory<_i22.ProductBloc>(
      () => _i22.ProductBloc(get<_i13.IStoreManagerRepository>()));
  gh.factory<_i23.SOrderBloc>(
      () => _i23.SOrderBloc(get<_i11.IOrderRepository>()));
  gh.factory<_i24.SignInFormBloc>(
      () => _i24.SignInFormBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i25.StoreBloc>(() => _i25.StoreBloc(
      get<_i13.IStoreManagerRepository>(), get<_i9.IIdentityRepository>()));
  gh.factory<_i26.TransactionBloc>(
      () => _i26.TransactionBloc(get<_i15.ITransactionRepository>()));
  gh.factory<_i27.TripBloc>(() => _i27.TripBloc(get<_i17.ITripRepository>()));
  gh.factory<_i28.Uploads>(() => _i28.Uploads(get<_i6.FirebaseStorage>()));
  gh.lazySingleton<_i29.VoucherRepository>(
      () => _i29.VoucherRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i30.AppData>(() => _i30.AppData(get<_i4.FirebaseFirestore>()));
  gh.factory<_i31.AuthFlowBloc>(
      () => _i31.AuthFlowBloc(get<_i7.IAuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
