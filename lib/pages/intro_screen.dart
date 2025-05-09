// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          ClipRect(child: Image.asset('lib/images/ic_app_icon.png' , width: 300 , height: 300,)),

          //title texxt
          Text(
            "Welcome to Evaly",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          const SizedBox(
            height: 10,
          ),
          //sub title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Shop smart. Save more. Discover great deals every day",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          //button
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
