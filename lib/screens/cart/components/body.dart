import 'package:flutter/material.dart';
import 'package:printing_app/components/product_card.dart';
import 'package:printing_app/models/Product.dart';
import '../../../size_config.dart';
import 'package:printing_app/getFiv.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<Product> myList = myProvider.wishList;
    if (myList.isEmpty) {
      return Center(
        child: Text('You have Nothing in the Cart Yet'),
      );
    } else {
      return GridView(
        padding: EdgeInsets.all(25),
        children: [
          ...List.generate(
            demoProducts2.length,
                (index) {
              if (demoProducts2[index].isFavourite)
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
          maxCrossAxisExtent: 300,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
      );
    }
  }
}
