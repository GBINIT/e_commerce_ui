// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/myslider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' hide CarouselController;

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "What whould you Like to buy ?",
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      textAlign: TextAlign.center,
                    ),

                    //banner
                    Myslider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}