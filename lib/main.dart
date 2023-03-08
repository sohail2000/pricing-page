import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carousel_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<CarouselItem> items = [
    CarouselItem(
      title: 'Item 1',
      imageUrl: 'assets/flea.svg',
      charges: '9',
    ),
    CarouselItem(
      title: 'Item 2',
      imageUrl: 'assets/flea.svg',
      charges: '99',
    ),
    CarouselItem(
      title: 'Item 3',
      imageUrl: 'assets/flea.svg',
      charges: '499',
    ),
    CarouselItem(
      title: 'Item 4',
      imageUrl: 'assets/flea.svg',
      charges: '1499',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Demo'),
      ),
      body: Center(
          child: CarouselSlider(
        items: items,
        options: CarouselOptions(
          height: size.height * 0.8,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      )),
    );
  }
}
