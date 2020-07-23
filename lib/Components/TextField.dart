import 'package:flutter/material.dart';
import '../constants.dart';

class MyText extends StatefulWidget {
  final String text;
  final String hintText;
  final bool isPassword;
  final TextInputType textInputType;

  MyText({this.text, this.hintText, this.isPassword, this.textInputType});

  @override
  _MyTextState createState() => _MyTextState(text, hintText, isPassword,textInputType);
}

class _MyTextState extends State<MyText> {
  String text;
  String hintText;
  bool isPassword;
  TextInputType textInputType;

  _MyTextState(this.text, this.hintText, this.isPassword, this.textInputType);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          decoration: BoxDecoration(
              color: kTextField,
              shape: BoxShape.rectangle,
              border: Border.all(color: kTextFieldBorderColor, width: 0.01),
              borderRadius: BorderRadius.circular(15.0)),
          child: TextField(
            maxLines: textInputType == TextInputType.multiline? 5: 1,
            style: TextStyle(color: Colors.black),
            keyboardType: textInputType,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
              fillColor: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
