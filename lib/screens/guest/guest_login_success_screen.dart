import 'package:flutter/material.dart';

import 'components/body.dart';

class GuestLoginSuccessScreen extends StatelessWidget {
  static String routeName = "/guest_login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(""),
      ),
      body: Body(),
    );
  }
}
