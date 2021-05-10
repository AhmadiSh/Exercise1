import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';

class StoryList extends StatefulWidget {
  const StoryList({Key key}) : super(key: key);

  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16,bottom: 14, left: 12),
      //padding: EdgeInsets.only(right: 8),
      width: double.maxFinite,
      height:100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: avatarItem,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget avatarItem(BuildContext context, int index) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          width: 75,
          height:75,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img1),fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(
                  width: 3, color: Colors.redAccent)),
        ),
        Container(
          margin: EdgeInsets.only(top:8),
          alignment: Alignment.center,
          child: Text("Banu",style: Theme.of(context).textTheme.bodyText2,),
        )
      ],
    );
  }

  //customize border gradient
  final borderGradient = BoxDecoration(
      border: Border.all(width: 2),
      shape: BoxShape.circle,
      gradient: LinearGradient(
          colors: [Colors.orange, Colors.pink, Colors.purple],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter));
}
