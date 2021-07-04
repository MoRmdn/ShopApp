import 'package:flutter/material.dart';
import 'package:printing_app/models/Product.dart';

import 'components/heroBody.dart';

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
            "${demoProducts2.length} items",
            style: Theme.of(context).textTheme.caption,
          ),

          /*Text(
            "${demoCarts.length} items",
            style: Theme
                .of(context)
                .textTheme
                .caption,
          ),*/
        ],
      ),
    );
  }
}
