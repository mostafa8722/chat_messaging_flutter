
 import 'package:flutter/material.dart';

import '../../../utils/constanats.dart';

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Container(

      padding: EdgeInsets.symmetric(
        horizontal: kdefaultPadding,
        vertical: kdefaultPadding/2,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,4),
                blurRadius: 32,
                color: Color(0xff887949)
            )]
      ),
      child: new SafeArea(
        child: new Row(
          children: [
            SizedBox(width: 10,),
            new Icon(Icons.mic,color: Colors.green,),
            SizedBox(width: 10,),
            new Expanded(
              child: new Container(
                padding: EdgeInsets.symmetric(
                  vertical: kdefaultPadding*0.75,
                  horizontal: kdefaultPadding*0.75,

                ),
                decoration: new BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(40),


                ),
                child: new Row(
                  children: [
                    new Icon(Icons.sentiment_satisfied,
                      color: Theme.of(context)
                          .textTheme.bodyText1?.color?.withOpacity(0.65)
                      ,
                    ),
                    new Expanded(
                      child: new TextField(
                        decoration: InputDecoration(
                            hintText: "Type Message",
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    new Icon(Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme.bodyText1?.color?.withOpacity(0.65)
                      ,
                    ),
                    new Icon(Icons.camera_alt,
                      color: Theme.of(context)
                          .textTheme.bodyText1?.color?.withOpacity(0.65)
                      ,
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}