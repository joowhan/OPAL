import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'dart:convert';
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

  List<int> top = [];
  List<int> bottom = [0];

  @override
  Widget build(BuildContext context)  {

    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right:20.0)),
            Icon(Icons.accessible_rounded, size:40),
            Text('장애인 운동',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),

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
              height:(MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top)*0.1,
              width: 400,
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => myFitness()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.white60,
                splashColor: Colors.red,
                textColor: Colors.black45,
                label: Text('유산소 운동 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.directions_run_rounded, size: 50, color: Colors.black54),
              ),
            ),

          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Container(
              height:(MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top)*0.1,
              width: 400,
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => myFitness()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Colors.brown[600],
                splashColor: Colors.red,
                textColor: Colors.white,
                label: Text('내 운동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55)),
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
      appBar: AppBar(

          backgroundColor: Colors.white,

          title: Text('추천 운동 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color:Colors.black,
              )
          )
      ),
      body: Center(
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleSection,

            Padding(padding: EdgeInsets.all(20.0)),
            buttonSection,

          ],
        ),
      ),
    );
  }
}

