import 'package:flutter/material.dart';
import '../constants.dart';

class MyCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final Function onPress;

  MyCard({this.imagePath, this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          minHeight: 283.0,
          minWidth: 318.0,
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 20,
                offset: Offset(0, 3),
              )
            ]
        ),
        child: Card(

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          elevation: 5.0,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(imagePath),
              RawMaterialButton(
                fillColor: kButtonColors,
                child: Text(
                  text.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,

                  ),

                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
                ),
                onPressed: onPress,
                constraints: BoxConstraints(
                    minHeight: 62.0
                ),
              )
            ],
          ),
        ),
      );

  }
}


