import 'package:flutter/material.dart';
import 'package:printing_app/components/product_card.dart';
import 'package:printing_app/models/Product.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: [
        ...List.generate(
          demoProducts2.length,
          (index) {
            if (demoProducts2[index].isSuperHero)
              return ProductCard(product: demoProducts2[index]);
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
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
    );
  }
}
