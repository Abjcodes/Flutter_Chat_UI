import 'package:flutter/material.dart';
import 'package:chat_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: ThemeData(
        primaryColor: Color(0xff082032),
        accentColor: Color(0xff2C394B),
      ),
      home: HomeScreen(),
    );
  }
}
