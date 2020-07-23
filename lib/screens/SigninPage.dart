import 'package:flutter/material.dart';
import 'package:makane/Components/NavigatorButton.dart';
import 'package:makane/screens/HomePage.dart';
import '../Components/TextField.dart';

class SignInPage extends StatefulWidget {
  static final String id = 'signinScreen';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image(
                  //1.01877
                  image: AssetImage('Assets/images/login.png'),
                  width: 203.75,
                  height: 200.14,
                ),
              ),
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.left,

              ),
              SizedBox(height: 10.0,),
              SizedBox(
                child: Container(

                  color: Colors.black,
                  constraints: BoxConstraints(
                    minWidth: 57.0,
                    maxWidth: 57.0,
                    minHeight: 3.0,
                    maxHeight: 3.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MyText(
                text: 'E-Mail',
                isPassword: false,
                hintText: 'email@email.com',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15.0,
              ),
              MyText(
                text: 'Password',
                isPassword: true,
                hintText: '**********',
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 15.0,
              ),
              MyButton(text: 'get in', navigation: () {Navigator.pushNamed(context, HomePage.id);},)
            ],
          ),
        ),
      ),
    );
  }
}

