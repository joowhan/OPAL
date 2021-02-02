import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../main.dart';
import '../home.dart';

// ignore: camel_case_types
class ADgoodjob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var goodjob = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
    Column(
        children: <Widget>[


          Text(
        '잘 하셨습니다!'
        ,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)
          )
        ],
    ), //하나의 함수로 묶어서 쓰면 좋다.
        Padding(padding: EdgeInsets.all(20.0)),
        Padding(padding: EdgeInsets.all(20.0)),
      ],
    );

    var rst = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
    Column(
    children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey[200]
              ),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey[200],
            ),
            margin: const EdgeInsets.all(50.0),
            // padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: Text(
              '''
              
      팔 위아래로 흔들기 X 5
      바운스 X 10
      팔 휘두르기 X 15
      벽 밀기 X 5
      노 젓기 X 10
      숨 쉬기 X 5
              ''',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.black))),
          ),
    ],
    ), //하나의 함수로 묶어서 쓰면 좋다.
          Padding(padding: EdgeInsets.all(20.0)),
          Padding(padding: EdgeInsets.all(20.0)),
        ],
    );
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
                            CupertinoPageRoute(builder: (context) => MyHomePage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0))),
                      color: Colors.indigo[900],
                      splashColor: Colors.red,
                      textColor: Colors.white,
                      child: Text('완료',
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
    body: Center(
    child: ListView(
    children: <Widget>[
      Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('images/stars.png'),
      Padding(padding: EdgeInsets.all(10.0)),
      goodjob,
      Padding(padding: EdgeInsets.all(10.0)),
      rst,
    Padding(padding: EdgeInsets.all(10.0)),
    complete,
    Padding(padding: EdgeInsets.all(10.0)),
    ],
    ),
    ],
    )),
    );
  }
}
