import 'package:flutter/material.dart';
import 'package:instagram/lists/ExploreList.dart';
import 'package:instagram/lists/StoryList.dart';

import '../assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5F6FA),
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          StoryList(),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(16.0),
                    child: Text("Explorer",
                        style: Theme.of(context).textTheme.headline2),
                  )),
              Expanded(flex:2, child: Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  boxShadow: [BoxShadow( color:Colors.grey.shade200,offset:Offset(2,2))]
                ),
                child:TextField(
                  textAlign: TextAlign.left,
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: Image.asset(search),
                      onPressed: (){},
                      padding: EdgeInsets.only(left: 12.0),
                    )
                  ),

                ),
              ))
            ],
          ),
          ExploreList()
        ],
      ),
    );
  }
}
