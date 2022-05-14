import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constanats.dart';

class RoundedButton extends StatelessWidget{
  final  text ;
  final press;
  final Color color,textColor;

  RoundedButton({
    this.text,
    this.press,
    this.color=kPrimaryColor,
    this.textColor = Colors.white
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: elementButton(),
      ),
    );
  }
  Widget elementButton(){
    return new ElevatedButton(
      onPressed: press,
      child: new Text(text,style: TextStyle(color: textColor),),
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          textStyle: TextStyle(
              color: textColor,fontSize: 14,fontWeight: FontWeight.w500
          )
      ),
    );
  }
}