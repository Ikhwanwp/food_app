part of 'services.dart';

class TransactionServices {
  static Future<ApiReturnValue<List<Transactions>>> getTransaction() async {
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(value: mockTransaction);
  }

  static Future<ApiReturnValue<Transactions>> submitTransaction(
      Transactions transactions) async {
    await Future.delayed(Duration(seconds: 2));
    // return ApiReturnValue(massage: "Transaksi Gagal");
    return ApiReturnValue(
        value:
            transactions.copyWith(id: 123, status: TransactionStatus.pending));
  }
}
