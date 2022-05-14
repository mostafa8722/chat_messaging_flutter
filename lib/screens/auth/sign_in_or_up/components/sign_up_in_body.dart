import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constanats.dart';
import '../../../../widgets/roundedButton.dart';
import '../../../chats/chats_screen.dart';
import '../../Login/login_screen.dart';
import '../../signup/components/signUp.dart';


class SignUpInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Center(
      child:  new Column(
        children: [
          SizedBox(height: 20,),
          Image.asset(
          MediaQuery.of(context).platformBrightness == Brightness.light?
          "assets/images/logo_light.png" : "assets/images/logo_dark.png"
          ,height: 130,)
          ,SizedBox(height: 20,)
          ,RoundedButton(text:"Sign up",color: kPrimaryColor,textColor: kContentColorDarkTheme,press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatsScreen()) );
          },)

          ,RoundedButton(text:"Sign In",color: kSecondaryColor,textColor: kContentColorDarkTheme,press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()) );
          },)

        ],
      ),
    )
    );
  }

}