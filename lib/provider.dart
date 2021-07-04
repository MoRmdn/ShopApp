import 'package:flutter/material.dart';
import 'package:printing_app/models/Product.dart';

class myProvider with ChangeNotifier {
  static List<Product> wishList = [];
  static List<Product> cartList = [];
  static List<Product> avaiPro = demoProducts,demoProducts2,demoProducts3;
  static double price =0 ;
  bool isProFiv(int id) {
    return wishList.any((pro) => pro.id == id);
  }
  bool isProAdd(int id) {
    return cartList.any((pro) => pro.id == id);
  }

  void toggleFiv(int ProID) {
    var existingPro = wishList.indexWhere((pro) => pro.id == ProID);
    if (existingPro >= 0) {
      wishList.removeAt(existingPro);
    } else {
      wishList.add(demoProducts.firstWhere((pro) => pro.id == ProID));
    }
  }
  void toggleAdd(int ProID) {
    var existingPro = cartList.indexWhere((pro) => pro.id == ProID);
    if (existingPro >= 0) {
      cartList.removeAt(existingPro);
    } else {
      cartList.add(demoProducts.firstWhere((pro) => pro.id == ProID));
    }
  }
  /*void sumPrice ()
  {
    price = price +cartList;
  }*/

}
