
import 'package:chat_messaging_flutter/screens/messages/components/list_messages.dart';
import 'package:chat_messaging_flutter/utils/constanats.dart';
import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import 'chat_input_field.dart';

class BodyMessage extends StatelessWidget{

  Chat chat ;
  BodyMessage({required this.chat});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
       child: new Column(
         children: [
           ListMessage(chat: chat,),
           ChatInputField()
         ],
       ),
     );
  }
}