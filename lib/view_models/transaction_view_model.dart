import 'package:project/models//api/transaction_api.dart';
import 'package:flutter/cupertino.dart';

class TransactionViewModel extends ChangeNotifier {
  final TransactionApi transApi = TransactionApi();

  Future<void> postTransaction(Map data) async {
    try {
      await transApi.postTransaction(data);
    } catch (_) {
      rethrow;
    }
  }
}
