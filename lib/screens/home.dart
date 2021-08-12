import 'package:chat_app/Widgets/RecentChats.dart';
import 'package:chat_app/Widgets/stories.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/Widgets/category_scelector.dart';
import 'package:flutter/painting.dart';
void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
     appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.menu),
         color: Colors.white,
         onPressed: () {},
       ),
       centerTitle: true,
       title: Text(
         "Chats",
         style: TextStyle(
          fontWeight: FontWeight.bold,
           fontSize: 25.0,
         ),
       ),
       actions: [
         IconButton(
           icon: Icon(Icons.search),
           color: Colors.white,
           onPressed: () {},
         ),
       ],
       elevation: 0.0,
     ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget> [
                  Stories(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
