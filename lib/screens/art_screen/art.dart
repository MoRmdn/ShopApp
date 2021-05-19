import 'package:flutter/material.dart';
import 'components/bodyOfArt.dart';
import 'package:shop_app/models/Cart.dart';


class ART extends StatelessWidget {
  static String routeName = "/art";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "ART",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme
                .of(context)
                .textTheme
                .caption,
          ),
        ],
      ),
    );
  }
}

