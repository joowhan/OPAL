import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Aerobic_updown.dart';
import 'Aerobic_page.dart';

class aerobic extends StatefulWidget {
  @override
  _aerobicState createState() => _aerobicState();
}

class _aerobicState extends State<aerobic> {
  @override
  Widget build(BuildContext context) {
    var complete = Column(
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
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => aerobic_page()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.0))),
                color: Colors.indigo[900],
                splashColor: Colors.red,
                textColor: Colors.white,
                child: Text('시작하기',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              ),
            ),
          ],
        ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Padding(padding: EdgeInsets.all(20.0)),
      ],
    );


    return Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                child: Text(
                    '유산소', style: TextStyle(fontSize: 36, color: Colors.indigo))
            ),
            ListTile(
              title: Text(
                  '팔 위아래로 흔들기 X 5',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),ListTile(
              title: Text(
                  '바운스',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),ListTile(
              title: Text(
                  '팔 휘두르기',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),ListTile(
              title: Text(
                  '벽 밀기',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),ListTile(
              title: Text(
                  '노 젓기 ',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),ListTile(
              title: Text(
                  '숨쉬기',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 80, top: 0, bottom: 150)),
            complete,
          ],
        )
    );
  }
}