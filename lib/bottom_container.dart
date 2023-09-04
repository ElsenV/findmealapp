import 'package:flutter/material.dart';

import 'icon_class.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List icons = [
      BottomsIcons(Icons.home),
      BottomsIcons(Icons.search),
      BottomsIcons(Icons.explore),
      BottomsIcons(Icons.settings)
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            size: 40.0,
            color: Colors.blue,
          ),
          Icon(
            Icons.search,
            size: 40.0,
            color: Colors.blue,
          ),
          Icon(
            Icons.explore,
            size: 40.0,
            color: Colors.blue,
          ),
          Icon(
            Icons.settings,
            size: 40.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
