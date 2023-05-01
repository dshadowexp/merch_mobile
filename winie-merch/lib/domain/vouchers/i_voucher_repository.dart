import 'entities/voucher.dart';

abstract class IVoucherRepository {
  Future<List<Voucher>> loadVouchers(String storeId);
  Future<List<Voucher>> addVoucher(Map data);
}
