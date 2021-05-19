import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';


class carts {
  final Product product;
  final int numOfItem;

  carts({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<carts> demoCarts = [
  carts(product: demoProducts[4], numOfItem: 1),
  carts(product: demoProducts[1], numOfItem: 1),
  carts(product: demoProducts[3], numOfItem: 1),
];
