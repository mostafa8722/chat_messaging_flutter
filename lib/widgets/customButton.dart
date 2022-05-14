import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constanats.dart';

class CustomButton extends StatelessWidget{
  final  text ;
  final press;
  final border;
  final height;
  final width;
  final Color color,textColor,borderColor;

  CustomButton({
    this.text,
    this.press,
    this.height,
    this.width,
    this.color=kPrimaryColor,
    this.textColor = Colors.white,
    this.border,
    this.borderColor=Colors.transparent,
  });
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: height,

      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: border// red as border color
        ),
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child :elementButton(),
    );
  }
  Widget elementButton(){
    return new GestureDetector(
      onTap: press,
      child: new Center(
        child: new Text(text,style: TextStyle(color: textColor,fontSize: 12),),
      ),

    );
  }
}