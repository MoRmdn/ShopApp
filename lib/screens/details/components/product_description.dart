import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:printing_app/screens/wishlist/wishlist.dart';
import 'package:provider/provider.dart';
import 'package:printing_app/models/Product.dart';
import 'package:printing_app/provider.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  static String routeName = "/ProDis";

  ProductDescription({
    Key key,
    this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create:(BuildContext context) => myProvider(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                width: getProportionateScreenWidth(64),
                decoration: BoxDecoration(
                  /*color: product.isFavourite
                      ? Color(0xFFFFE6E6)
                      : Color(0xFFF5F6F9),*/
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Provider.of<myProvider>(context, listen: false).toggleFiv(product.id);
                    final _sBar=SnackBar(content: Text("added to th Favourite"),
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Color(0xFFFF7643),
                      action: SnackBarAction(
                        label: "View",
                        textColor: Colors.white ,
                        onPressed:(){
                          Navigator.pushNamed(context, WishList.routeName);
                        } ,
                      ) ,
                    );
                    Scaffold.of(context).showSnackBar(_sBar);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/Heart Icon_2.svg",

                    /*color: Provider.of<myProvider>(context, listen: false).isProFiv(product.id)
                        ? Color(0xFFFF4848)
                        : Color(0xFFDBDEE4),*/
                    height: getProportionateScreenWidth(16),
                  ),
                )
                /*SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color:
                    product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
                height: getProportionateScreenWidth(16),
              ),*/
                ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64),
            ),
            child: Text(
              product.description,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: 10,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "See More Detail",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
