import 'package:flutter/material.dart';
import 'package:makane/constants.dart';
class MyButton extends StatelessWidget {
  final String text;
  final Function navigation;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
      fillColor: kButtonColors,
      constraints: BoxConstraints(
          minHeight: 53.0,
          maxHeight: 53.0,
          minWidth: MediaQuery.of(context).size.width
      ),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Poppins',
            color: Colors.white),
      ),
      onPressed: navigation ,
    );
  }

  MyButton({this.text, this.navigation});
}
