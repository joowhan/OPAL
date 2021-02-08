import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'dart:convert';
import 'disabled/Aerobic.dart';
import 'home.dart';

/*class myFitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("추천 운동"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 눌렀을 때 첫 번째 route로 되돌아 갑니다.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/
class myFitness extends StatefulWidget {
  @override
  _myFitnessState createState() => _myFitnessState();
}

class _myFitnessState extends State<myFitness> {

  @override
  Widget build(BuildContext context) {

    var titleSection1 = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 20.0)),
            //Icon(Icons.accessible_rounded, size: 40),
            Text('장애인 운동',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
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
              width: 380,
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
                splashColor: Colors.indigo,
                textColor: Colors.black87,
                label: Text('유산소 ',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
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
              width: 380,
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
                splashColor: Colors.indigo,
                textColor: Colors.black87,
                label: Text('유연성 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
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
              width: 380,
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
                splashColor: Colors.indigo,
                textColor: Colors.black87,
                label: Text('근력 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
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
          backgroundColor: Colors.blue[900],
          title: Text('노인 운동 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ))),
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
