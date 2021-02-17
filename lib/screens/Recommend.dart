import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:opalapp/screens/disabled/Aerobic/Aerobic.dart';
import 'package:opalapp/screens/disabled/Flexibility/Flexibility.dart';
import 'dart:convert';
import 'disabled/Aerobic/Aerobic_D_Goodjob.dart';
import 'disabled/M_strength/M_strength.dart';
import 'home.dart';

class Recommendation extends StatefulWidget {
  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  Widget build(BuildContext context) {


    var titleSection1 = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 20.0)),
            //Icon(Icons.accessible_rounded, size: 40),
            Text('휠체어 운동',
                style: TextStyle(fontFamily: "Gmarket", fontSize: 40, fontWeight: FontWeight.bold)),
          ],
        ),
        //Padding(padding: EdgeInsets.only(top: 20.0)),
      ],
    );

    var buttonSection1 = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.25,
              width: 350,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                color: Colors.white60,
                splashColor: Color(hexColor('153E90')),
                textColor: Colors.black87,
                label: Text('유산소 ',
                    textAlign: TextAlign.left,
                    style:
                      TextStyle(fontFamily: "Gmarket", fontSize: 40, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.directions_run_rounded,
                    size: 50, color: Colors.black87),
              ),
            ),
          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(10.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.25,
              width: 350,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => Flexibility()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                color: Colors.white60,
                splashColor: Color(hexColor('153E90')),
                textColor: Colors.black87,
                label: Text('유연성 ',
                    style:
                      TextStyle(fontFamily: "Gmarket", fontSize: 40, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.emoji_people_rounded,
                    size: 55, color: Colors.black87),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.25,
              width: 350,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => mstrength()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                color: Colors.white60,
                splashColor: Color(hexColor('153E90')),
                textColor: Colors.black87,
                label: Text('근력 ',
                    style:
                    TextStyle(fontFamily: "Gmarket", fontSize: 40, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.fitness_center_rounded,
                    size: 55, color: Colors.black87),
              ),
            ),
          ],
        ),
      ],
    );



    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(hexColor('#153E90')),
          title: Text('휠체어 운동',

              style: TextStyle(fontFamily: "Gmarket", fontSize: 23, fontWeight: FontWeight.bold)
          )),
      body: Center(
          child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0)),
              //titleSection1,
              Padding(padding: EdgeInsets.all(10.0)),
              buttonSection1,
              Padding(padding: EdgeInsets.all(20.0)),
            ],
          ),
        ],
      )),
    );
  }
}
