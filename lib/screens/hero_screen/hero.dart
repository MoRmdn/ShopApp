import 'package:flutter/material.dart';
import 'components/heroBody.dart';
import 'package:shop_app/models/Cart.dart';


class HERO extends StatelessWidget {
  static String routeName = "/hero";

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
            "Hero",
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

