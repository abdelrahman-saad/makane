import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makane/Components/NavigatorButton.dart';
import '../constants.dart';
import 'package:makane/screens/ThanksForRegisterScreen.dart';

class ProfileEntry2 extends StatefulWidget {
  static final String id = 'ProfileEntry2';

  @override
  _ProfileEntry2State createState() => _ProfileEntry2State();
}

class _ProfileEntry2State extends State<ProfileEntry2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('Assets/images/profile1.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Profile',
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
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                child: Container(
                  constraints: BoxConstraints(minWidth: 318.0, minHeight: 172.0),
                  color: kTextField,

                  child: DottedBorder(

                    padding: EdgeInsets.all(50.0),
                    color: kTextFieldBorderColor.withOpacity(0.7),
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            '+ \t Add a profile picure',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
             MyButton(text: 'finish', navigation: () {Navigator.pushNamed(context, ThanksForRegisterScreen.id);},)

            ],
          ),
        ),
      ),
    );
  }
}
