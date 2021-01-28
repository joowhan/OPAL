import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:opalapp/screens/disabled/Aerobic.dart';
import 'dart:convert';
import 'home.dart';

class Recommendation extends StatefulWidget {
  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {

    var titleSection1 = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 20.0)),
            Icon(Icons.accessible_rounded, size: 40),
            Text('장애인 운동',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 30.0)),
      ],
    );

    var titleSection2 = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 20.0)),
            Icon(Icons.elderly_rounded, size: 40),
            Text('노인 운동',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 30.0)),
      ],
    );

    var buttonSection1 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('유산소 운동 ',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.directions_run_rounded,
                    size: 50, color: Colors.black54),
              ),
            ),
          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('유연성 ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.emoji_people_rounded,
                    size: 55, color: Colors.black54),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('근력 ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.fitness_center_rounded,
                    size: 55, color: Colors.black54),
              ),
            ),
          ],
        ),
      ],
    );


    var buttonSection2 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('유산소 운동 ',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.directions_run_rounded,
                    size: 50, color: Colors.black54),
              ),
            ),
          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('유연성 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.emoji_people_rounded,
                    size: 55, color: Colors.black54),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
                  0.1,
              width: 400,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('근력 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.fitness_center_rounded,
                    size: 55, color: Colors.black54),
              ),
            ),
          ],
        ),
      ],
    );
    //노인 운동

    //Padding(padding: EdgeInsets.all(35.0)),
    /*Column(
          children: <Widget>[
            Icon(Icons.share, size: 45, color: Colors.blueAccent),
            Text('SHARE', style: TextStyle(color: Colors.lightBlue))
          ],
        ),*/

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('추천 운동 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.black,
              ))),
      body: Center(
          child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleSection1,
              Padding(padding: EdgeInsets.all(20.0)),
              buttonSection1,
              Padding(padding: EdgeInsets.all(20.0)),
              titleSection2,
              Padding(padding: EdgeInsets.all(20.0)),
              buttonSection2,
              Padding(padding: EdgeInsets.all(20.0)),
            ],
          ),
        ],
      )),
    );
  }
}
