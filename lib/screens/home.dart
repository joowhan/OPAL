import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/screens/AccountInfo.dart';
import 'package:opalapp/screens/Recommend.dart';
import 'MyFitness.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  hexColor (String colorhexcode){
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;

  }

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
                style: TextStyle(fontFamily: "Gmarket", fontSize: 40, fontWeight: FontWeight.bold)),

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
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom)*0.27,
              width: 350,
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => Recommendation()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                color: Color(hexColor('0E49B5')),
                  splashColor: Colors.indigo[900],
                textColor: Colors.white,
                label: Text('휠체어 운동', style:  TextStyle(fontFamily: "Gmarket", fontSize: 50, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.fitness_center_rounded, size: 0, color: Colors.white),
              ),
            ),

          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(30.0)),
        Column(
          children: <Widget>[
            Container(
              height:(MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom)*0.27,
              width: 350,
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
                color:Color(hexColor('#0E49B5')),
                splashColor: Colors.indigo[900],
                textColor: Colors.white,
                label: Text('노인 운동', style: TextStyle(fontFamily: "Gmarket", fontSize: 50, fontWeight: FontWeight.bold)),
                icon: Icon(Icons.fitness_center_rounded, size: 0, color: Colors.white),
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
            /*Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  "운동 시작 ",
                  style: TextStyle(fontSize: 50, color: Colors.blue[800], fontWeight: FontWeight.w900),
                )),
            titleSection,*/
            /*Text(
                '운동을 선택해주세요!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: (
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom)*0.06)
            ),*/
            Padding(padding: EdgeInsets.all(20.0)),
            buttonSection,

          ],
        ),
      ),
    );
  }
}

