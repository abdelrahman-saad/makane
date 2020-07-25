import 'package:flutter/material.dart';

final Color kBackgroundColor = Color(0xFFCE0000);
final Color kButtonColors = Color(0xFFE50000);
final Color kTextField = Color(0xFFF3F3F3);
final Color kTextFieldBorderColor = Color(0xFF707070);


TextStyle kTextStyle(double size){
  return TextStyle(
    fontSize: size,
    fontFamily: 'Poppins'
  );
}
enum Toggle{
  cafe,
  resturants,
}