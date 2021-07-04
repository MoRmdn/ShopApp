import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:printing_app/constants.dart';
import 'package:printing_app/screens/new_arrival/n_arrival.dart';
import 'package:printing_app/screens/sign_in/sign_in_screen.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final alert= AlertDialog(
      content: Container(
        height: 100,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("OOPS Sorry no Deals Now"),
            SizedBox(height: 20,),
            RaisedButton(
              color: Color(0xFF4A3298),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue",style: TextStyle(
                    color: Colors.white,
                  ),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_rounded, color: Colors.white,),

                ],
              ),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
          ],
      ) ,
      ),
    );

    final alert2= AlertDialog(
      content: Container(
          height: 250,
          child: Column(
            children: [
            Container(
                child:Column(
                  children: [
                    Text("Your Daily Gift"),
                    Divider(color:Colors.black),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      child: Text("U Should Sign-in to Redeem your Gift"),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.center,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Color(0xFFFF7643),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_rounded, color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Back & Sign in",style: TextStyle(
                              color: Colors.white,
                            ),),
                          ],
                        ),
                        onPressed: ()=>Navigator.pushReplacementNamed(context, SignInScreen.routeName) ,
                      ),

                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: RaisedButton(
                          color: Color(0xFF4A3298),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Continue" ,style: TextStyle(
                              color: Colors.white,
                            ),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_rounded, color: Colors.white,),

                          ],
                        ),
                        onPressed: ()=>Navigator.of(context).pop(),
                        ),

                      ),



                    /*                Container(
                      child: Row(
                        children: [
                          Container(

                            child: TextButton.icon(onPressed: ()=>Navigator.pushReplacementNamed(context, SignInScreen.routeName), icon: Icon(Icons.arrow_back_rounded), label: Text("Sign-in") ),
                          ),
                          SizedBox(width: 5  ,),
                          Container(

                            child: TextButton.icon(onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_forward_rounded), label: Text("continue") ),
                          ),
                          SizedBox(width: 100,),

                        ],
                      ),
                    ),*/
                  ],
                )
            ),
          ],),

        ),


    );
    
    
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/shopping-bag.svg", "text": "New Arrive"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
                if (categories[index]["text"] =="New Arrive"){
                Navigator.pushNamed(context, newArrival.routeName) ;}
                if(categories[index]["text"] =="Flash Deal"){
                  showDialog(context: context, builder: (BuildContext ctx) => alert );
                }
                if(categories[index]["text"] =="Daily Gift"){
                  showDialog(context: context, builder: (BuildContext ctx) => alert2 );
                }
            },
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(

                color: Color.fromRGBO(200, 211, 213, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                icon,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
