import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/message_model.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:10.0),
      child: Column(
        children: <Widget>[
        Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.0,
        ),
        child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Stories",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: Colors.white,
          ),),
          IconButton(icon: Icon(Icons.more_horiz),
              onPressed: () {},
          iconSize: 30.0,
          color: Colors.white),
        ],
      ),
      ),
          Container(
            height: 120.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left:10.0),
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: EdgeInsets.only(left:13.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(height: 7),
                        Text(
                          favorites[index].name,
                          style:TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
      },
          ),
          ),
      ],
      ),
    );
  }
}
