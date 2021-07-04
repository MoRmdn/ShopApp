import 'package:flutter/material.dart';
import 'components/bodyOfN_arrival.dart';

class newArrival extends StatelessWidget {
  static String routeName = "/N_arrival";

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
            "New Arrival",
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
