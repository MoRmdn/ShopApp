import 'package:flutter/material.dart';
import 'package:printing_app/components/coustom_bottom_nav_bar.dart';
import 'package:printing_app/enums.dart';

import 'components/body.dart';

class WishList extends StatelessWidget {
  static String routeName = "/WishList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
