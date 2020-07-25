import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: must_be_immutable
class AToggleButtons extends StatefulWidget {
  AToggleButtons({this.text, this.color, this.onPress});

  final String text;
  Color color;
  Function onPress;

  @override
  _AToggleButtonsState createState() => _AToggleButtonsState();
}

class _AToggleButtonsState extends State<AToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Poppins',
            color: widget.color,
          ),
        ),
      ),
      onPressed: widget.onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: widget.color == Colors.white ? kButtonColors : Colors.white,
      padding: EdgeInsets.all(10.0),
      elevation: 5.0,
      highlightElevation: 8.0,
    );
  }
}
