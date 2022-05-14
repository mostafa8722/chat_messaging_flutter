

import 'package:chat_messaging_flutter/screens/chats/components/chat_card.dart';
import 'package:chat_messaging_flutter/widgets/roundedButton.dart';
import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import '../../../utils/constanats.dart';
import '../../../widgets/customButton.dart';

class ChatBody extends StatelessWidget {

  // ignore: prefer_typing_uninitialized_variables
  var  chatData= chatsData ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
     new Column(children: [
     new Container(
       height: 50,
       width: MediaQuery.of(context).size.width,
       color:kPrimaryColor,
       child:
        new Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:  new Row(
            children: [
              CustomButton(
                color: Colors.white,
                text: "Recent Message",
                textColor: klightDarkColor,
                height: 40,
                width: 130,
                border: 1,


              ),
             new Padding(padding: EdgeInsets.only(left: 10),
             child:  CustomButton(
               text: "Active",
               border: 1,
               borderColor: Colors.white,
               textColor: Colors.white,
               height: 40,
               color: kPrimaryColor,
               width: 100,

             ),
             )
            ],
          ),
        )
     ),
       new Expanded(

         child: new ListView.builder(

           itemCount: chatData.length,
           itemBuilder: (context,index) =>ChatCard(chatData[index]),

         ),
       )
     ],)
      );
  }
}