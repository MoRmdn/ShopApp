import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import '../../../size_config.dart';
import 'package:shop_app/components/product_card.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
          padding: EdgeInsets.all(25),
          children: [
            ...List.generate(
              demoProducts.length,
                  (index) {
                if (demoProducts[index].isSuperHero)
                  return ProductCard(product: demoProducts[index]);
                return SizedBox
                    .shrink(); // here by default width and height is 0
              },
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3/4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
        );
  }
}
