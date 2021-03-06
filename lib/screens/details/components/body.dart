import 'package:flutter/material.dart';
import 'package:printing_app/components/default_button.dart';
import 'package:printing_app/models/Product.dart';
import 'package:printing_app/screens/cart/cart_screen.dart';
import 'package:printing_app/screens/details/components/radioButtons.dart';
import 'package:printing_app/size_config.dart';
import 'package:provider/provider.dart';
import '../../../provider.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    SizedBox(height: 20,),
                    radioButt(),
                    SizedBox(height: 20,),
                    TextField(
                      minLines: 3,
                      maxLines:5,
                      showCursor:true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Tell us the final dimensions of your part, up to 2ft3, and how many you would like created for each part of your assembly.'
                      ),
                    ),
                    TextButton(onPressed: (){},
                        child: Text("Submit",style: TextStyle(
                          fontSize: 20,
                        ),)

                    ),
                    SizedBox(height: 20,),
                    ChangeNotifierProvider(
                      create:(BuildContext context) => myProvider(),
                      child: TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            bottom: getProportionateScreenWidth(40),
                            top: getProportionateScreenWidth(15),
                          ),
                          child: DefaultButton(
                            text: "Add To Cart",
                            press: () {
                              Provider.of<myProvider>(context, listen: false).toggleAdd(product.id);
                              final _sBar=SnackBar(content: Text("added to th cart"),
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                               backgroundColor: Color(0xFFFF7643),
                                action: SnackBarAction(
                                  label: "View",
                                  textColor: Colors.white ,
                                  onPressed:(){
                                    Navigator.pushNamed(context, CartScreen.routeName);
                                  } ,
                                ) ,
                              );
                              Scaffold.of(context).showSnackBar(_sBar);
                            },
                          ),
                        ),
                      ),
                    ),


                ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
