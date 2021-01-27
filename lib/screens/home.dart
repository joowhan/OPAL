import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/screens/first.dart';
import 'list.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right:30.0)),
            Text('안녕하세요!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),

          ],
        ),
        Padding(padding: EdgeInsets.only(top: 30.0)),
      ],
    );

    var buttonSection = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height:200,
              width: 400,
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => SecondRoute()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.amber[800],
                  splashColor: Colors.red,
                textColor: Colors.white,
                label: Text('추천 운동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55)),
                icon: Icon(Icons.fitness_center_rounded, size: 55, color: Colors.white),
              ),
            ),

          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height:200,
              width: 400,
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => SecondRoute()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.brown[600],
                splashColor: Colors.red,
                textColor: Colors.white,
                label: Text('추천 운동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55)),
                icon: Icon(Icons.fitness_center_rounded, size: 55, color: Colors.white),
              ),
            ),

          ],
        ),
        Padding(padding: EdgeInsets.all(35.0)),
        /*Column(
          children: <Widget>[
            Icon(Icons.share, size: 45, color: Colors.blueAccent),
            Text('SHARE', style: TextStyle(color: Colors.lightBlue))
          ],
        ),*/
      ],
    );



    return Scaffold(
      body: Center(
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  "운동 시작 ",
                  style: TextStyle(fontSize: 50, color: Colors.blue[800], fontWeight: FontWeight.w900),
                )),
            titleSection,
            Text(
                '운동을 선택해주세요!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            buttonSection,

          ],
        ),
      ),
    );
  }
}

