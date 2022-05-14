
import 'package:flutter/material.dart';

import '../../auth/sign_in_or_up/sign_in_up_screen.dart';
class WelcomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Column(

      children: [
        Spacer(flex: 2,),
        Image.asset("assets/images/welcome_image.png"),
        Spacer(),
        Text("Welcome to our freedom \n messaging app"
          ,style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(flex: 2,),
        Text("Freedom talk any person of your \nor another language"
          ,style: TextStyle(fontSize: 15,color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64)),
        ),
        Spacer(),
        FittedBox(
          child:      new TextButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>SignUpInScreen())
            );
          }, child:
          new Row(
            children: [
              new Text("Skip",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.5)
                ),
              ),
              new Icon(Icons.arrow_forward_ios
                ,size: 16,
                color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8),
              ),


            ],
          )
          ),
        )
      ],
    ),

    );
  }
}