import 'package:flutter/material.dart';

class BottomsIcons {
  final IconData? icon;
  BottomsIcons(this.icon);
}

class BottomIconData extends StatelessWidget {
  final IconData? icon;

  BottomIconData({this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 40.0,
      color: Colors.blue,
    );
  }
}
