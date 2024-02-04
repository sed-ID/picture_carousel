import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePaths = [
    'images/image1.jpg',
    'images/image2.png',
    'images/image3.jpg',
    'images/image4.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(
              options: CarouselOptions(autoPlay: true),
              items: _imagePaths.map((imagepath) {
                return Builder(builder: (context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Image.asset(imagepath),
                  );
                });
              }).toList()),
        ),
      ),
    );
  }
}
