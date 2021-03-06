import 'package:flutter/material.dart';
import 'package:printing_app/components/default_button.dart';
import 'package:printing_app/screens/home/home_screen.dart';
import 'package:printing_app/screens/sign_in/sign_in_screen.dart';
import 'package:printing_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "SignUP Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Continue to home",
            press: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
        TextButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            },
            icon: Icon(Icons.logout),
            label: Text("Log out"))
      ],
    );
  }
}
