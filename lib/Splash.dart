import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:makane/constants.dart';
import 'package:makane/screens/BoardingPage.dart';
import 'package:makane/screens/HomePage.dart';
import 'package:makane/screens/LoginScreen.dart';
import 'package:makane/screens/Profile.dart';
import 'package:makane/screens/ProfileEntry2.dart';
import 'package:makane/screens/SignUp-2.dart';
import 'package:makane/screens/SignUp.dart';
import 'package:makane/screens/SignUpOption.dart';
import 'package:makane/screens/SigninPage.dart';
import 'package:makane/screens/ThanksForRegisterScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      routes: {
        BoardingScreen.id:(context)=> BoardingScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        SignInPage.id: (context) =>SignInPage(),
        HomePage.id:(context)=>HomePage(),
        SignUp.id:(context) => SignUp(),
        SignUpSecondPage.id:(context) => SignUpSecondPage(),
        SignUpOption.id:(context)=> SignUpOption(),
        Profile.id: (context)=> Profile(),
        ProfileEntry2.id: (context) => ProfileEntry2(),
        ThanksForRegisterScreen.id: (context) => ThanksForRegisterScreen(),
      },
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body:CustomSplash(
        imagePath: 'Assets/images/logo.png',
        logoSize: 200.0,
        backGroundColor: kBackgroundColor,
        duration: 2500,
        type: CustomSplashType.StaticDuration,
        home: BoardingScreen(),
        animationEffect: 'fade-in',
      )
    );
  }
}

