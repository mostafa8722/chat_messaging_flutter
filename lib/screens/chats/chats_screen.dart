
import 'package:chat_messaging_flutter/screens/chats/components/chat_body.dart';
import 'package:flutter/material.dart';

import '../../utils/constanats.dart';


class ChatsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>ChatsScreenState();
}
class ChatsScreenState extends State<ChatsScreen>{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: new Text("Chat",style: TextStyle(color: Colors.white),),
        actions: [
          GestureDetector(
            child: new Padding(padding:EdgeInsets.only(right: 15),
              child: new Icon(Icons.search),
            ),
            onTap: (){},
          ),
        ],

      ),
      body: new ChatBody(),
      bottomNavigationBar: bottomNavigationBar()


    );
  }
  BottomNavigationBar bottomNavigationBar(){
   return new BottomNavigationBar(
     type: BottomNavigationBarType.fixed,
     currentIndex:_selectedIndex ,
     onTap: (value){
       setState(() {
         _selectedIndex = value;
       });

     },
     items: [
       BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
       BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
       BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
       BottomNavigationBarItem(

         icon: CircleAvatar(
           radius: 14,
           backgroundImage: AssetImage("assets/images/user_2.png"),
         ),
         label: "Profile",
       ),
     ],
   );
}
}