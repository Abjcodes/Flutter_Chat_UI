import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> view = ["Messages", "Online", "Groups", "Requests"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: view.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
            },
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                  view[index],
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                  letterSpacing: 1.2,
                ),
              ),
            )
            );
          }
      ),
    );
  }
}
