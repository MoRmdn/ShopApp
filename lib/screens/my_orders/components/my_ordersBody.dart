import 'package:flutter/material.dart';
import 'package:printing_app/components/product_card.dart';
import 'package:printing_app/models/Product.dart';
import '../../../size_config.dart';
import 'package:printing_app/provider.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> cartList = myProvider.cartList;

    if (cartList.isEmpty) {
      return Center(
        child: Text('You have Nothing in the Cart Yet'),
      );
    } else {
      return GridView(
        padding: EdgeInsets.all(25),
        children: [
          ...List.generate(
            cartList.length,
                (index) {
              if (cartList[index].isFavourite)
                return ProductCard(product: cartList[index]);
              return SizedBox.shrink(
                child: ElevatedButton(
                  child: Text('Button'),
                  onPressed: () {},
                ),
              ); // here by default width and height is 0
            },
          ),
          SizedBox(width: getProportionateScreenWidth(0)),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
      );
    }
  }
}