import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  var ctx;
  @override
  Widget build(BuildContext context) {
    Widget notif (var color , String title){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10, ),
        child: TextButton(
          child: Text("$title"),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.9),
              color,
            ],
            begin:Alignment.topLeft ,
            end: Alignment.bottomRight ,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      );
    }

      show(BuildContext ctx) {
      showModalBottomSheet(
          elevation: 10,
          backgroundColor: Color.fromRGBO(255, 127, 0, 1),
          context: ctx,
          builder: (ctx) => Container(
            width: 300,
            height: 250,
            color: Color.fromRGBO(255, 127, 0, 1),
            child: Column(
              children: [
                SizedBox(height:10),
                notif(Colors.white, "HEY Welcome To our APP"),
                SizedBox(height: 10),
                notif(Colors.white, "If u need any help Contact with Us"),
                SizedBox(height: 10),
                notif(Colors.white, "U Can Use this code WELCOME10 to get 10% discount"),
              ],
            ),
          ));
    }


    // TODO: implement build
    return show(ctx);
  }

}
