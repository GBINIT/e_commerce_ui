// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/components/mytextfield.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
        onPressed: ()=> Navigator.push(context , MaterialPageRoute(builder: (context)=> LoginPage())), 
        icon: Icon(Icons.cancel)),
      ),

      //main body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ClipRect(child: Image.asset('lib/images/ic_app_icon.png' , width: 300 , height: 300,)),            
              const SizedBox(height: 10,),
              //name text field
              Mytextfield(hinttext: "Name", icon: Icon(Icons.person)),

              const SizedBox(height: 10,),
              //phone number text field
              Mytextfield(hinttext: "Phone Number", icon: Icon(Icons.call)),

              const SizedBox(height: 10,),

              Mytextfield(hinttext: "Password", icon: Icon(Icons.password_outlined)),
              const SizedBox(height: 10,),

              GestureDetector(
                onTap : ()=> Navigator.push(context , MaterialPageRoute(builder: (context)=> HomePage())),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text("Sign up", textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20
                      ),),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ?"),
                  Text("Sign in",
                  style: TextStyle(
                    color: Colors.red,
                  )
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),      
    );
  }
}