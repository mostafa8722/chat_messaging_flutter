

  import 'package:chat_messaging_flutter/models/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../messages/message_screen.dart';

class ChatCard extends StatelessWidget{
  bool isDarkMode = false;
 final Chat chat;
  ChatCard(
      this.chat
      );
  @override
  Widget build(BuildContext context) {
    var brightness =MediaQuery.of(context).platformBrightness;
    isDarkMode = (brightness==Brightness.dark) ? true:false;
    return new GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(chat:chat)));
      },
      child: new Container(

        margin: EdgeInsets.only(top: 10),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Row(
              children: [
                new SizedBox(width: 5,),
                new Stack(
                  children: [
                    new CircleAvatar(
                      backgroundImage: AssetImage(chat.image),
                      radius: 24,
                    ),
                    new Positioned(
                      bottom: 4,
                      right: 4,
                      child: new Container(height: 10,width: 10,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: chat.isActive?Colors.green:Color(0xffaaaaaa),
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(width: 10,),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(chat.name,style: TextStyle(fontSize: 14,color:isDarkMode?Colors.white: Color(0xff555555)),),
                    new Text(chat.lastMessage,
                      maxLines: 1,


                      style: TextStyle(fontSize: 14,color: isDarkMode?Colors.white.withOpacity(0.76): Color(0xffaaaaaa)),

                    )
                  ],
                )
              ],
            ),
            new Padding(
              child:  new Text(chat.time,style: TextStyle(fontSize: 14,color:isDarkMode?Colors.white.withOpacity(0.76): Color(0xffaaaaaa)),),
              padding: EdgeInsets.only(right: 10),
            )
          ],

        ),
      ),
    );
  }
}