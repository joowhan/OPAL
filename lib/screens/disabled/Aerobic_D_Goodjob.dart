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
    ),
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
                  child: Column(
                    children: <Widget>[
                    Text(
    '''
유산소
'''    ,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.left
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50.0),
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.schedule, size: 30),
                            Text(
                                ' 30분',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                textAlign: TextAlign.center
                            )
                          ]
                        )
                    ),
                    Container(
                      child: Text(
    '''
    
팔 위아래로 흔들기 X 5 
바운스 X 10
팔 휘두르기 X 15
벽 밀기 X 5
노 젓기 X 10
숨 쉬기 X 5

    ''',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left
                      )
                    )
                  ],
                  )
                )
                // ),
          ],
          ),
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
              ),
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
                goodjob,
                rst,
                complete,
              ],
            ),
          ],
        )
      ),
    );
  }
}
