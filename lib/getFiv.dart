import 'package:flutter/material.dart';
import 'package:printing_app/models/Product.dart';

class myProvider with ChangeNotifier {
  static List<Product> wishList = [];
  List<Product> avaiPro = demoProducts;

  bool isProFiv(int id) {
    return wishList.any((pro) => pro.id == id);
  }

  void toggleFiv(int ProID) {
    var existingPro = wishList.indexWhere((pro) => pro.id == ProID);
    if (existingPro >= 0) {
      wishList.removeAt(existingPro);
    } else {
      wishList.add(demoProducts.firstWhere((pro) => pro.id == ProID));
    }
  }
}
