import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:woltclone/bottom_container.dart';
import 'package:woltclone/carousel/carousel_widget.dart';

import 'image_container.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF000708)),
      title: 'Wolt Clone',
      color: Colors.black38,
      home: Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.home,
              size: 35.0,
              color: Colors.blue,
            ),
            title: Text(
              'Find',
              style: TextStyle(fontSize: 30.0, color: Colors.blue),
            ),
            centerTitle: true,
            backgroundColor: Colors.black87),
        body: HomePage(),
        bottomSheet: BottomContainer(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List photos = [
      ImageData(image: 'assets/images/store 2.jpg'),
      ImageData(image: 'assets/images/Sushisamba.jpg')
    ];
    final List restaurants = [
      ImageData(image: 'assets/images/store 2.jpg'),
      ImageData(image: 'assets/images/Sushisamba.jpg')
    ];
    return Container(
      margin: EdgeInsets.all(12.0),
      child: ListView(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayAnimationDuration: Duration(seconds: 3),
            ),
            itemCount: photos.length,
            itemBuilder: (context, index, realIndex) => ImageContainer(
              image: photos[index].image,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Restaurants',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: restaurants.length,
            itemBuilder: (context, index) =>
                ImageContainer(image: restaurants[index].image),
          )
        ],
      ),
    );
  }
}
