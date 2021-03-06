import 'package:flutter/material.dart';
import 'package:printing_app/models/Product.dart';
import 'components/bodyOfArt.dart';

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
              "${demoProducts3.length} items",
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
