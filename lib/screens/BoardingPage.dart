import 'package:flutter/material.dart';
import 'package:makane/constants.dart';
import 'package:makane/screens/HomePage.dart';
import 'package:makane/screens/LoginScreen.dart';
import 'package:makane/screens/SignUp.dart';

class BoardingScreen extends StatelessWidget {
  static final String id = 'boardingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('Assets/images/boardingImage.png'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Book before you go',
                    style: TextStyle(fontSize: 30.0, fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Check the availbility\n before you go',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Poppins',
                        color: Colors.grey.withOpacity(0.7)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  RawMaterialButton(
//696312
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    fillColor: kButtonColors,
                    elevation: 5.0,
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 53.0,
                      minWidth: 219.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    child: Hero(
                      tag: 'hero',
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: kBackgroundColor,
                            fontFamily: 'Poppins',
                            fontSize: 17.0),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: kBackgroundColor,
                              fontSize: 17.0,
                              fontFamily: 'Poppins'),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, SignUp.id);
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
