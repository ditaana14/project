import 'package:project/models/api/keranjang_api.dart';
import 'package:project/models/keranjang_model.dart';
import 'package:flutter/cupertino.dart';

class KeranjangViewModel extends ChangeNotifier {
  final KeranjangApi keranjangApi = KeranjangApi();
  List<KeranjangModel> listkeranjang = [];

  Future<void> postKeranjang(Map data) async {
    try {
      await keranjangApi.postKeranjang(data);
    } catch (_) {
      rethrow;
    }
  }

  Future<void> fetchKeranjang() async {
    try {
      listkeranjang = await keranjangApi.getKeranjang();
      notifyListeners();
    } catch (_) {
      rethrow;
    }
  }
}