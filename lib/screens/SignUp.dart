import 'package:flutter/material.dart';
import 'package:makane/Components/NavigatorButton.dart';
import 'package:makane/screens/SignUp-2.dart';
import '../Components/TextField.dart';

class SignUp extends StatefulWidget {
  static final String id = 'Signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('Assets/images/addUser.png'),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal,
                      ),
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
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              MyText(isPassword: false,text: 'E-Mail', hintText: 'email@email.com', textInputType: TextInputType.emailAddress,),
              SizedBox(height: 10.0,),
              MyText(isPassword: false,text: 'Phone Number', hintText: '+201234567891', textInputType: TextInputType.phone,),
              SizedBox(height: 10.0,),
              MyText(isPassword: true,text: 'Password', hintText: '*********', textInputType: TextInputType.text,),
              SizedBox(height: 10.0,),
              MyButton(text: 'next',navigation: () {Navigator.pushNamed(context, SignUpSecondPage.id);},)
            ],
          ),
        ),
      ),
    );
  }
}
