
import 'package:flutter/material.dart';
class radioButt extends StatefulWidget {
  const radioButt() ;

  @override
  radioButtState createState() => radioButtState();
}

class radioButtState extends State<radioButt> {

  var _radioValue=0;
  @override
  Widget build(BuildContext context) {
     return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text('Size :',style: TextStyle(
              fontSize: 20,
            ),),
          ),
            Row(
              children: [
                Radio(value: 25, groupValue: _radioValue, onChanged: (value){
                  setState((){
                    _radioValue=value;
                  });
                }),
                Text("1 ft"),
                SizedBox(width: 10,),
                Radio(value: 30, groupValue: _radioValue, onChanged: (value){
                  setState((){
                    _radioValue=value;
                  });
                }),
                Text("1.5 ft"),
                SizedBox(width: 10,),
                Radio(value: 40, groupValue: _radioValue, onChanged: (value){
                  setState((){
                    _radioValue=value;
                  });
                }),
                Text("2 ft"),
                SizedBox(width: 10,),
                Radio(value: 50, groupValue: _radioValue, onChanged: (value){
                  setState((){
                    _radioValue=value;
                  });
                }),
                Text("2.5 ft"),
                SizedBox(width: 10,),
  ],
            ),
          ],
      ),
    );
  }
}
