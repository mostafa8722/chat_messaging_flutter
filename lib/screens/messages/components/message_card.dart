import 'package:chat_messaging_flutter/models/message.dart';
import 'package:chat_messaging_flutter/utils/constanats.dart';
import 'package:flutter/material.dart';

import '../../../models/chat.dart';

class MessageCard  extends StatelessWidget {

  ChatMessage message ;
  Chat chat ;

  MessageCard({required this.message,required this.chat});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return new Padding(padding: EdgeInsets.only(top: 10,),
    child: new Row(

      mainAxisAlignment: message.isSender?MainAxisAlignment.end:MainAxisAlignment.start,

      children: [
        SizedBox(width: 5,),
        message.isSender ?MessageType(message.messageType,size) : showUserAvatar(),
        SizedBox(width: 5,),
        message.isSender ?showStatus() : MessageType(message.messageType,size),
        SizedBox(width: 5,),


      ],

    ),
    );




  }


  Widget MessageType(type,size){
    switch(type) {
      case  ChatMessageType.text :
       return  MessageText();
        break;
      case ChatMessageType.audio:
        return MessageAudio(size);
        break;
      case ChatMessageType.image:
        return MessageImage(size);
            break;
      case ChatMessageType.video:
        return MessageVideo(size);
        break;
      default :
        return MessageText();

    }
  }
  MessageText(){
    return new Container(
       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: message.isSender ?Colors.green:klightDarkColor
       ),
       child: new Text(message.text,style: TextStyle(color: message.isSender ?Colors.white:Colors.white.withOpacity(0.8)),),
     );
  }

  MessageVideo(size){
    return new SizedBox(
      width:  size.width *0.45 ,
      child: new Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/Video Place Here.png"),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: new Icon(Icons.play_arrow_rounded,color: Color(0xffdddddd),),
          )
        ],
      )
    );
  }
  MessageImage(size){
    return new SizedBox(
        width:  size.width *0.45 ,
        child: new Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/Video Place Here.png"),
            ),

          ],
        )
    );
  }

  MessageAudio(size){
    return new Container(
           width: size.width*0.55,
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        decoration: BoxDecoration(
            color: message.isSender ?Colors.green:klightDarkColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: new Row(
          children: [
          new Icon(Icons.play_arrow_rounded,color: !message.isSender ?Colors.white:Colors.white,),
           Expanded(
             child:
            new Container(
              height: 30,
              child:  new Stack(

                alignment: Alignment.center,
                children: [
                  new Container(
                    width: double.infinity,
                    height: 2,
                    decoration: BoxDecoration(
                      color: !message.isSender ?Colors.white:Colors.white,

                    ),
                  ),
                  new Positioned(
                    left: 0,
                    top: 10,
                    child: new Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: !message.isSender ?Colors.white:Colors.white,
                          shape: BoxShape.circle

                      ),
                    ),
                  )

                ],
              ),
            )
           )
          ],
        )
    );
  }
  Widget showUserAvatar(){
    return new CircleAvatar(
      backgroundImage: AssetImage(chat.image),
      radius: 20,
    );
  }
  Color statusColor(status){
    switch (status){
      case MessageStatus.not_sent:
        return kErrorColor;
      break;
      case MessageStatus.not_view:
        return kPrimaryColor.withOpacity(0.1);
        break;
      case MessageStatus.viewed:
        return kPrimaryColor;
        break;
      default:
        return Colors.transparent;

    }

  }
  Widget showStatus(){
    return new Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: statusColor(message.messageStatus)
      ),
      child: new Center(child: new Icon(
        message.messageStatus==MessageStatus.not_sent? Icons.close:Icons.done,
        size: 7,
      ),)
    );
  }
}