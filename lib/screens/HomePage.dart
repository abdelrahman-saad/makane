import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makane/Components/AToggleButtons.dart';
import '../constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:makane/constants.dart';

class HomePage extends StatefulWidget {
  static final String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Toggle toggle = Toggle.cafe;
  int NBIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset('Assets/images/Homepage.jpg'),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
//                  alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height * 0.75,
                    padding:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                              color: kTextField,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: kTextFieldBorderColor, width: 0.01),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: '\t Search',
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.5)),
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            AToggleButtons(
                              text: 'Cafe',
                              color: toggle == Toggle.cafe
                                  ? Colors.white
                                  : Colors.black,
                              onPress: () {
                                setState(() {
                                  toggle = Toggle.cafe;
                                });
                              },
                            ),
                            AToggleButtons(
                              text: 'Restaurants',
                              color: toggle == Toggle.resturants
                                  ? Colors.white
                                  : Colors.black,
                              onPress: () {
                                setState(() {
                                  toggle = Toggle.resturants;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[ReusableCard()],
                        ),
//                      List view of cards
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: NBIndex,
        elevation: 5000,
        backgroundColor: Colors.white,
        selectedItemColor: kButtonColors,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(AntDesign.calendar), title: Text('Calendar')),
          BottomNavigationBarItem(
              icon: Icon(Entypo.ticket), title: Text('Coupons')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              title: Text('Profile')),
        ],
        //initialActiveIndex: 2, //optional, default as 0
        onTap: (i) {
          setState(() {
            NBIndex = i;
          });
        },
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: <Widget>[
          Expanded(flex: 1, child: Image.asset('Assets/images/logo.png')),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Text('text'),
                Text('text'),
                Text('text'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
