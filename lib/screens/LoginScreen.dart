import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makane/screens/SigninPage.dart';
import '../Components/MyCard.dart';
class LoginScreen extends StatelessWidget {
  static final String id = 'LoginScreen';

  void Nav(context){Navigator.pushNamed(context, SignInPage.id);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(imagePath: 'Assets/images/sign-in_1.png', text: 'sign in as a person',onPress: (){Navigator.pushNamed(context, SignInPage.id);},),
            MyCard(imagePath: 'Assets/images/sign-in_2.png', text: 'sign in as a cafe',onPress: (){Navigator.pushNamed(context, SignInPage.id);},),
          ],
        ),
      )
    );
  }
}
