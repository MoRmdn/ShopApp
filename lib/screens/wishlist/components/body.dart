import 'package:flutter/material.dart';
import 'package:printing_app/components/product_card.dart';
import 'package:printing_app/models/Product.dart';
import 'package:printing_app/provider.dart';
import '../../../size_config.dart';

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
        child: Text('You have No Favourite Yet'),
      );
    } else {
      return GridView(
        padding: EdgeInsets.all(25),
        children: [
          ...List.generate(
            myList.length,
            (index) {
              if (myList[index].isFavourite)
                return ProductCard(product: myList[index]);
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
