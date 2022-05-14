import 'package:chat_messaging_flutter/screens/welcom/welcome_screen.dart';
import 'package:chat_messaging_flutter/utils/costomTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Chat Messaging',

      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),

      home: WelcomeScreen(),
    );
  }
}

