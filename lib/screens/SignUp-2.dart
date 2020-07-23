import 'package:flutter/material.dart';
import 'package:makane/Components/NavigatorButton.dart';
import 'package:makane/constants.dart';
import 'package:makane/screens/SignUpOption.dart';

class SignUpSecondPage extends StatefulWidget {
  static final String id = 'signUp2';

  @override
  _SignUpSecondPageState createState() => _SignUpSecondPageState();
}

class _SignUpSecondPageState extends State<SignUpSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: Column(
//            mainAxisSize: MainAxisSize.min,

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('Assets/images/signUp2.png'),
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
                    SizedBox(
                      height: 10.0,
                    ),
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
              SizedBox(height: 20.0,),
              Text(
                'Authentication Code',
                style: kTextStyle(15.0),
              ),
              SizedBox(height: 20.0,),

              Text(
                'Please enter the OTP code that was sent to the number you entered',
                style: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 20.0,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[

                  Expanded(child: OTPTextField()),
                  SizedBox(width: 10.0,),
                  Expanded(child: OTPTextField()),
                  SizedBox(width: 10.0,),
                  Expanded(child: OTPTextField()),
                  SizedBox(width: 10.0,),
                  Expanded(child: OTPTextField()),
                  SizedBox(width: 10.0,),
                  Expanded(child: OTPTextField()),

                ],
              ),
              SizedBox(height: 20.0,),

              MyButton(text: 'finish', navigation: () {Navigator.pushNamed(context, SignUpOption.id);},)
            ],
          ),
        ),
      ),
    );
  }
}


class OTPTextField extends StatefulWidget {
  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      constraints: BoxConstraints(
        maxWidth: 48.0,
        maxHeight: 53.0
      ),
      decoration: BoxDecoration(

          color: kTextField,
          shape: BoxShape.rectangle,
          border: Border.all(color: kTextFieldBorderColor, width: 0.01),
          borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: TextField(
//          maxLength: 1,
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.number,
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '1',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            fillColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

