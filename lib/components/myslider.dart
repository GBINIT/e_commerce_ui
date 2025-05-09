import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' hide CarouselController;

class Myslider extends StatefulWidget {
  const Myslider({super.key});

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('lib/images/banner.png'),
        Image.asset('lib/images/promotion_one.png'),
        Image.asset('lib/images/promotion_two.png')
      ], 
      options: CarouselOptions(
        // height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
        aspectRatio: 16/9,
        autoPlayInterval:const  Duration(seconds: 3 ),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enableInfiniteScroll: true,
      )
      );
  }
}
