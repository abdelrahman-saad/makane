import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makane/Components/AToggleButtons.dart';
import '../constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:makane/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
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
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            ReusableCard(path:'Assets/images/default.png'),
                          ],
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 3),
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: BottomNavigationBar(
            elevation: 150.0,
//            backgroundColor: Colors.blueGrey,
//          fixedColor: Colors.blueGrey,
            selectedItemColor: kButtonColors,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('home')),
              BottomNavigationBarItem(
                  icon: Icon(AntDesign.calendar), title: Text('Calendar')),
              BottomNavigationBarItem(
                  icon: Icon(Entypo.ticket), title: Text('Coupons')),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled),
                  title: Text('Profile')),
            ],
            currentIndex: NBIndex,
            onTap: (i) {
              setState(() {
                NBIndex = i;
              });
            },
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        padding: EdgeInsets.all( 10.0),
//        height: 171,
//        width: 318,
      constraints: BoxConstraints(
        minHeight: 171,
       // minWidth: 318
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(child: Image.asset(path)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Dawar Cafe',style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Poppins'
                  ),),
                  SizedBox(height: 10.0,),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 4,

                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(height: 10.0,),

                  Text('Availability ', style: TextStyle(fontFamily: 'Poppins',fontSize: 10.0),),
                  SizedBox(height: 10.0,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Icon(CupertinoIcons.person),
                      Text('55'),
                      RatingBar(
                        itemSize: 12,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
