import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/colors.dart';
import 'package:instagram/screens/DiscoverPage.dart';
import 'package:instagram/screens/HomePage.dart';
import 'assets.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFC0B7B),
        backgroundColor: Color(0xffF5F6FA),
        textTheme: TextTheme(
            headline1: TextStyle(
                color: Color(0xff181818),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 24.0),
            headline2: TextStyle(
              color: Color(0xff181818),
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
            subtitle1: TextStyle(
                color: Color(0xff181818),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 16.0),
            subtitle2: TextStyle(
                color: Color(0xff737476),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 12.0),
            bodyText1: TextStyle(
                color: Color(0xff181818),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
            bodyText2: TextStyle(
                color: Color(0xff737476),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
            caption: TextStyle(
                color: Color(0xff181818),
                fontStyle: FontStyle.normal,
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontSize: 12.0)),
      ),
      home: Instagram()));
}

class Instagram extends StatefulWidget {
  const Instagram({Key key}) : super(key: key);

  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int index = 0;
  bool isSelected = false;

  Widget body() {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return DiscoverPage();
      case 2:
        return DiscoverPage();
      case 3:
        return DiscoverPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final appName = "Instagram";
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffF5F6FA),
        leading: IconButton(
          icon: IconButton(
            icon: Image.asset(
              plus,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          padding: EdgeInsets.only(left: 16.0),
          onPressed: () {},
        ),
        title: Image.asset(textLogo),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Image.asset(
                chat,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.pink, Colors.purple],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          child: Image.asset(logo),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF5F6FA),
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24.0))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image.asset(
                  home,
                  color: index == 0 ? pressColorIcon : unPressColorIcon,
                ),
                onPressed: () {
                  setState(() {
                    this.index = 0;
                  });
                },
              ),
              IconButton(
                icon: Image.asset(search,
                    color: index == 1 ? pressColorIcon : unPressColorIcon),
                onPressed: () {
                  setState(() {
                    this.index = 1;
                  });
                },
              ),
              IconButton(
                icon: Image.asset(heart,
                    color: index == 2 ? pressColorIcon : unPressColorIcon),
                onPressed: () {
                  setState(() {
                    this.index = 2;
                  });
                },
              ),
              IconButton(
                  icon: Icon(Icons.person,
                      color: index == 3 ? pressColorIcon : unPressColorIcon),
                  onPressed: () {
                    setState(() {
                      this.index = 3;
                    });
                  })
            ],
          ),
        ),
      ),
      body: body(),
    );
  }
}
