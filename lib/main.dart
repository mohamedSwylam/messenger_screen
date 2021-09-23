import 'package:flutter/material.dart';
import 'package:messenger_screen/modules/basics/user/user_Screen.dart';
import 'modules/basics/home/home_screen.dart';
import 'modules/basics/messenger/messenger _Screen.dart';

void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}