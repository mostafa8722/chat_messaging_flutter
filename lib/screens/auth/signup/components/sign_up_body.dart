
import 'package:flutter/cupertino.dart';

import '../../../../utils/constanats.dart';
import '../../../../widgets/roundedButton.dart';


class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Center(
      child:  new Column(
        children: [
          SizedBox(height: 20,),
          Image.asset("assets/images/logo_light.png",height: 130,)
          ,SizedBox(height: 20,)
          ,RoundedButton(text:"Sign up",color: kPrimaryColor,textColor: kContentColorDarkTheme,press: (){},)

          ,RoundedButton(text:"Sign In",color: kSecondaryColor,textColor: kContentColorDarkTheme,press: (){},)

        ],
      ),
    )
    );
  }

}