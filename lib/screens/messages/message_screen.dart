import 'package:chat_messaging_flutter/screens/messages/components/body_message.dart';
import 'package:flutter/material.dart';

import '../../models/chat.dart';


class MessageScreen extends StatelessWidget{
  final Chat chat;
  MessageScreen({
   required this.chat
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(child:
    new Scaffold(
      appBar: new AppBar(
        title:
        new Row(
          children: [
            new CircleAvatar(
              backgroundImage: AssetImage(chat.image),
              radius: 20,
            ),
            new SizedBox(width: 10,),
            new Column(
              children: [
                 new Text(chat.name,style: TextStyle(color: Colors.white,fontSize: 14),),
                 new SizedBox(height: 10,),
                 new Text(chat.time,style: TextStyle(color: Colors.white.withOpacity(0.76),fontSize: 12),),
              ],
            )
          ],
        ),
      ),
      body: new BodyMessage(chat : chat),
    )
    );
  }
}