import 'package:flutter/material.dart';
import 'package:makane/Components/NavigatorButton.dart';
import 'package:makane/screens/ProfileEntry2.dart';
import '../Components/TextField.dart';
import '../constants.dart';

class Profile extends StatefulWidget {
  static final String id = 'ProfilePage';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String hint = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.';

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
              SizedBox(height: 30.0,),
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
              SizedBox(height: 20.0,),
              MyText(text: 'Name', isPassword: false, hintText: 'Mostafa Saad', textInputType: TextInputType.text,),
              SizedBox(height: 20.0,),
              MyText(text: 'Phone Number', isPassword: false, hintText:'+201234567891', textInputType: TextInputType.phone,),
              SizedBox(height: 20.0,),
              MyText(text: 'Address', isPassword: false, hintText: '35 Combez St, Giza, Egypt', textInputType: TextInputType.text,),
              SizedBox(height: 20.0,),
              MyText(text: 'Description', isPassword: false,hintText: hint,textInputType: TextInputType.multiline,),
              SizedBox(height: 20.0,),
              MyButton(text: 'next',navigation: () {Navigator.pushNamed(context, ProfileEntry2.id);},)

            ],
          ),
        ),
      ),
    );
  }
}
