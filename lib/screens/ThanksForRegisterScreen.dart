import 'package:flutter/material.dart';
import 'package:makane/screens/HomePage.dart';
import '../constants.dart';
import '../Components/NavigatorButton.dart';

class ThanksForRegisterScreen extends StatelessWidget {
  static final String id = 'thanksPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('Assets/images/thanks.png'),
            Text(
              'Thanks for signin up',
              style: kTextStyle(25.0),
            ),
            Text(
              'We will review your details and let you know when it is approved',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
            MyButton(text: 'go back', navigation: () { Navigator.pushNamed(context, HomePage.id);},)

          ],
        ),
      ),
    );
  }
}

