import 'package:flutter/material.dart';
import 'package:printing_app/components/coustom_bottom_nav_bar.dart';
import 'package:printing_app/enums.dart';
import 'package:printing_app/provider.dart';

import 'components/body.dart';

class WishList extends StatelessWidget {
  static String routeName = "/WishList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Favourite",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${myProvider.wishList.length} items",
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
