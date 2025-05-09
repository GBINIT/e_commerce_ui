import 'package:e_commerce/components/mytextfield.dart';
import 'package:e_commerce/pages/intro_screen.dart';
import 'package:e_commerce/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void seepass(){

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          onPressed:()=> Navigator.push(context , MaterialPageRoute(builder: (context)=> IntroScreen())) , 
          icon: Icon(Icons.cancel)),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo 
            ClipRect(child: Image.asset('lib/images/ic_app_icon.png' , width: 300 , height: 300,)),            
            const SizedBox(height: 20,),
            //inputfield
           const   Mytextfield(hinttext: "Phone number", icon: Icon(Icons.phone) ,),
           const SizedBox(height: 20,),
           MyPasswordTextField(
            hintText: "Password", 
            prefixIcon: const Icon(Icons.lock,),
            sufixIcon: IconButton(onPressed: seepass, icon: const Icon(Icons.password_outlined)),
            ),
            
        
            //forgeet password text
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Forget your password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                    ),
                  ),
                ],
              ),
        
        
            //sign in button 
            GestureDetector(
              // onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context)=> SignupPage())),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 300,
                  decoration:  BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text("Login in",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                    textAlign: TextAlign.center,),
                  ),
                ),
              ),
            )
          ],
        ),
        
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account ? "),
              GestureDetector(
                onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context)=> SignupPage())),
                child: Text("Signup",
                style: TextStyle(
                  color: Colors.red,
                ),
                ))
            ],
          ),
        )
        
          ],
          //dont have a account and a signup naivagator
        ),
      )

    );
  }
}