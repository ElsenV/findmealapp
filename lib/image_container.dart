import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String? image;

  ImageContainer({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Opacity(
        opacity: 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            '$image',
            fit: BoxFit.cover,
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
