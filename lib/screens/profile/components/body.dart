import 'package:flutter/material.dart';
import 'package:printing_app/constants.dart';
import 'package:printing_app/screens/my_orders/my_orders.dart';
import 'package:printing_app/screens/sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  Widget notif2(var color, String title, BuildContext cctx) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(cctx).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.9),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child:
              //TextButton.icon
              TextButton(
            child: Text("$title"),
            /* icon: Icon(Icons.arrow_forward_ios_rounded),*/
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  void show2(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        context: ctx,
        builder: (ctx) => Container(
              width: 300,
              height: 250,
              color: kPrimaryColor,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  notif2(Colors.white, "HEY Welcome To our APP", ctx),
                  SizedBox(height: 10),
                  notif2(
                      Colors.white, "If u need any help Contact with Us", ctx),
                  SizedBox(height: 10),
                  notif2(
                      Colors.white,
                      "U Can Use this code WELCOME10 to get \n 10% discount",
                      ctx),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          /*ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),*/
          ProfileMenu(
            text: "My Orders",
            icon: "assets/icons/order.svg",
            press: () => {
              Navigator.pushNamed(context, myOrders.routeName),
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () => show2(context),
          ),
         /* ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),*/
          ProfileMenu(
            text: "FeedBack",
            icon: "assets/icons/feedback.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Rate Us on PlayStore",
            icon: "assets/icons/rating.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
