import 'package:flutter/material.dart';
import 'package:printing_app/constants.dart';

import '../../../size_config.dart';
import '../../cart/cart_screen.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  Widget notif(var color, String title, BuildContext cctx) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(cctx).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.9),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child:
              //TextButton.icon
              TextButton(
            child: Text("$title"),
            /* icon: Icon(Icons.arrow_forward_ios_rounded),*/
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  void show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        context: ctx,
        builder: (ctx) => Container(
              width: 300,
              height: 250,
              color: kPrimaryColor,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  notif(Colors.white, "HEY Welcome To our APP", ctx),
                  SizedBox(height: 10),
                  notif(
                      Colors.white, "If u need any help Contact with Us", ctx),
                  SizedBox(height: 10),
                  notif(
                      Colors.white,
                      "U Can Use this code WELCOME10 to get \n 10% discount",
                      ctx),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () => show(context),
          ),
        ],
      ),
    );
  }
}

/*
Column(
children: [
Text("HEY Welcome To our APP"),
Text("If u need any help Contact with Us"),
Text("U Can Use this code WELCOME10 to get 10% discount "),
],
),*/
