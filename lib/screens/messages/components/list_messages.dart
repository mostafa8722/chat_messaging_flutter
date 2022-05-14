

import 'package:chat_messaging_flutter/screens/messages/components/message_card.dart';
import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import '../../../models/message.dart';

class ListMessage extends StatelessWidget{

  Chat chat;
  final demeChatMessages1 = demeChatMessages;
  ListMessage({required this.chat});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      child: new ListView.builder(
        itemCount: demeChatMessages1.length,
        itemBuilder: (context,index)=>MessageCard(message: demeChatMessages1[index],chat:chat),
      ),
    );
  }
}