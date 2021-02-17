import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../main.dart';
import '../../home.dart';

// ignore: camel_case_types
class F_goodjob extends StatelessWidget {
  @override
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  Widget build(BuildContext context) {
    var star = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset(
              'images/stars.png',
              width: 400,
              height: 130,
              color: Colors.yellow,
              colorBlendMode: BlendMode.colorBurn,
            ),
          ],
        ),
      ],
    );

    var goodjob = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('잘 하셨습니다!',
                style: TextStyle(
                    fontFamily: "Gmarket",
                    fontWeight: FontWeight.bold,
                    fontSize: 40))
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
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[200],
                ),
                margin: const EdgeInsets.all(50.0),
                child: Column(
                  children: <Widget>[
                    Text('''
    
유연성
''',
                        style: TextStyle(
                            fontFamily: "Gmarket",
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                        textAlign: TextAlign.left),
                    Container(
                        child: Text('''
목 앞으로 당기기
목 옆으로 당기기
목 대각선으로 당기기
양팔 벌리기
팔꿈치 몸통으로 당기기
팔꿈치 머리 뒤로 당기기
깍지 끼고 내밀기
허리 뒤로 팔꿈치 당기기
숨쉬기

    ''',
                            style:
                                TextStyle(fontFamily: "Gmarket", fontSize: 20),
                            textAlign: TextAlign.left)),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 15),
              // 완료. 다음
              height: 60,
              width: 350,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    //push를 눌렀을 때 edit로 넘어가
                      context,
                      CupertinoPageRoute(builder: (context) => MyHomePage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15.0))),
                color: Color(hexColor('#0E49B5')),
                textColor: Colors.white,
                child: Text('완료',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Gmarket",
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
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
              star,
              goodjob,
              rst,
            ],
          ),
        ],
      )),
    );
  }
}
