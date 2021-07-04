import 'package:flutter/material.dart';
import 'package:printing_app/screens/f_deal/components/bodyOfF_deal.dart';


class popularPro extends StatelessWidget {
  static String routeName = "/pop_Pro";

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
            "Popular Product",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "6 items",
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






/*AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "New Arrival",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "6 items",
            style: Theme.of(context).textTheme.caption,
          ),

          *//*Text(
            "${demoCarts.length} items",
            style: Theme
                .of(context)
                .textTheme
                .caption,
          ),*//*
        ],
      ),
    );
  }
}*/
