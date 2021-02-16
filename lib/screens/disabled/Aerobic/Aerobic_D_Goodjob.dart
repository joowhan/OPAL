import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../main.dart';
import '../../home.dart';

// ignore: camel_case_types
class ADgoodjob extends StatelessWidget {
  @override

  hexColor (String colorhexcode) {
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
          Text(
        '잘 하셨습니다!'
        ,
        style: TextStyle(fontFamily: "Gmarket",fontWeight: FontWeight.bold, fontSize: 40)
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
                    width: 350,
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
                        style: TextStyle(fontFamily: "Gmarket",fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.left
                    ),
                    // Container(
                    //     margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    //     alignment: Alignment.center,
                    //     child: Row(
                    //       children: <Widget>[
                    //         Icon(Icons.schedule, size: 30),
                    //         Text(
                    //             ' 30분',
                    //             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    //             textAlign: TextAlign.center
                    //         )
                    //       ]
                    //     )
                    // ),
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
                          style: TextStyle(fontFamily: "Gmarket",fontSize: 20),
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
        )
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              //push를 눌렀을 때 edit로 넘어가
                context,
                CupertinoPageRoute(builder: (context) => MyHomePage()));
          },
          color: Color(hexColor('#0E49B5')),
          textColor: Colors.white,
          child: Text('완료',
              textAlign: TextAlign.left,
              style:
              TextStyle(fontFamily: "Gmarket",fontWeight: FontWeight.bold, fontSize: 45)),
        ),
      ),
    );
  }
}
