import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class ExploreList extends StatefulWidget {
  const ExploreList({Key key}) : super(key: key);

  @override
  _ExploreListState createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreList> {
  bool isSelected = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, bottom: 16, right: 16),
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: postItem,
        itemCount: 3,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget postItem(BuildContext context, int index) {
    return Flexible(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(
                          top: 16, left: 18, right: 16, bottom: 16),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(img2), fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Maoo.lopez",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 6),
                              child: Text(
                                "Hace 20 min",
                                maxLines: 1,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(icon: Image.asset(send), onPressed: () {}),
                          IconButton(
                              icon: Image.asset(options), onPressed: () {})
                        ],
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 12, left: 12),
                width: double.infinity,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                        image: AssetImage(covid), fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0.9, -0.9),
                      child: Flexible(
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 12, right: 12, top: 6, bottom: 6),
                            child: Text(
                              "1/3",
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff181818).withOpacity(0.6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(right: 16, left: 16, bottom: 18),
                      child: Row(
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      shape: BoxShape.circle),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: IconButton(
                                      icon: Image.asset(
                                        heartFill,
                                        color: isSelected
                                            ? Colors.indigo
                                            : Colors.white,

                                      ),

                                      onPressed: () {
                                        setState(() {
                                          count++;
                                          if(count%2==0)
                                          isSelected = false;
                                          if(count%2!=0)
                                            isSelected=true;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                      margin: EdgeInsets.only(left: 8),
                                      padding: EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 6,
                                          bottom: 6),
                                      child: Text(
                                        "1586",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.8),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color:Colors.white,
                                shape: BoxShape.circle),
                            child: SizedBox(
                              width: 24,
                              height: 24,
                              child: IconButton(
                                icon: Image.asset(
                                chat,
                                  color: Colors.black,
                                ),

                                onPressed: () {
                                  setState(() {

                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(right: 24, left: 24, top: 10, bottom: 14),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "SACRIFICE | VIRUS",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            "this photomanipulation inspired in the virus this photomanipulation inspired in the virusthis photomanipulation inspired in the virus",
                            style: Theme.of(context).textTheme.caption,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            child: Text(
                              "See more",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    child: Text(
                                      "SACRIFICE | VIRUS",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 6),
                                    child: Text(
                                      " virspired in the virus",
                                      style:
                                          Theme.of(context).textTheme.caption,
                                      overflow: TextOverflow.ellipsis,
                                      textDirection: TextDirection.ltr,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    child: Text(
                                      "See all Comment",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ]),
                        ),
                      ]))
            ])));
  }
}
