import 'package:flutter/material.dart';
import '../Components/MyCard.dart';
import 'package:makane/screens/Profile.dart';

class SignUpOption extends StatelessWidget {
  static final String id = 'sigUpOPtions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyCard(text: 'sign in as a person',imagePath: 'Assets/images/person.png',onPress: (){Navigator.pushNamed(context, Profile.id);}),
              SizedBox(height: 20.0,),
              MyCard(text: 'sign up as a cafe', imagePath: 'Assets/images/cafe.png',onPress: (){Navigator.pushNamed(context, Profile.id);}),
            ],
          ),
        ),
      ),
    );
  }
}
