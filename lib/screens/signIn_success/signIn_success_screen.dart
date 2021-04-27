import 'package:flutter/material.dart';

import 'components/body.dart';

class signInSuccessScreen extends StatelessWidget {
  static String routeName = "/signIn_success";
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
