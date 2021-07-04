import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),
  Cart(product: demoProducts[2], numOfItem: 1),
  Cart(product: demoProducts[3], numOfItem: 2),
  Cart(product: demoProducts[4], numOfItem: 3),
  Cart(product: demoProducts[5], numOfItem: 4),
  Cart(product: demoProducts[6], numOfItem: 5),
  Cart(product: demoProducts[7], numOfItem: 6),
  Cart(product: demoProducts[8], numOfItem: 7),
  Cart(product: demoProducts2[0], numOfItem: 8),
  Cart(product: demoProducts2[1], numOfItem: 9),
  Cart(product: demoProducts2[3], numOfItem: 1),
  Cart(product: demoProducts2[4], numOfItem: 2),
  Cart(product: demoProducts2[5], numOfItem: 3),
  Cart(product: demoProducts2[6], numOfItem: 4),
  Cart(product: demoProducts3[0], numOfItem: 1),
  Cart(product: demoProducts3[1], numOfItem: 2),
  Cart(product: demoProducts3[2], numOfItem: 3),
  Cart(product: demoProducts3[3], numOfItem: 4),
];
