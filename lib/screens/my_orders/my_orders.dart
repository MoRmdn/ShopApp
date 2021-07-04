import 'package:flutter/material.dart';
import 'package:printing_app/provider.dart';
import 'components/my_ordersBody.dart';

class myOrders extends StatelessWidget {
  static String routeName = "/myOr";

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
            "My Orders",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${myProvider.cartList.length} myProvider.ordersList.length item",
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
