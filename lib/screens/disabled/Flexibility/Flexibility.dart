import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Aerobic/Aerobic_updown.dart';
import '../Aerobic/Aerobic_page.dart';


class Flexibility extends StatefulWidget {
  @override
  _flexState createState() => _flexState();
}

class _flexState extends State<Flexibility> {
  @override
  Widget build(BuildContext context) {
    var goodjob = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '유연성',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
          ],
        ),
      ],
    );

    var time = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 35, top: 10),
                //margin: const EdgeInsets.all(20.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(Icons.schedule, size: 25),
                    Text(
                        ' 20분',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
          ],
        ),
      ],
    );

    var list1 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '목 앞으로 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );

    var list2 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '목 옆으로 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );

    var list3 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '목 대각선으로 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list4 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '양팔 벌리기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list5 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '팔꿈치 몸통으로 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list6 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '팔꿈치 머리 뒤로 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list7 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '깍지 끼고 내밀기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list8 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '허리 뒤로 팔꿈치 당기기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );
    var list9 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                        '숨쉬기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            )
            // ),
          ],
        ),
      ],
    );

    // var complete = Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   //mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     Column(
    //
    //       children: <Widget>[
    //         Container(
    //           height: (MediaQuery.of(context).size.height -
    //               MediaQuery.of(context).padding.top) * 0.1,
    //           width: 450,
    //           child: FlatButton(
    //             onPressed: () {
    //               Navigator.push(
    //                 //push를 눌렀을 때 edit로 넘어가
    //                   context,
    //                   CupertinoPageRoute(builder: (context) => aerobic_page()));
    //             },
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.all(Radius.circular(0.0))),
    //             color: Colors.indigo[900],
    //             splashColor: Colors.red,
    //             textColor: Colors.white,
    //             child: Text('시작하기',
    //                 textAlign: TextAlign.left,
    //                 style:
    //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('유연성 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ))),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //goodjob,
                Padding(padding: EdgeInsets.all(10.0)),
                time,
                list1,
                list2,
                list3,
                list4,
                list5,
                list6,
                list7,
                list8,
                list9,
                //complete,
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              //push를 눌렀을 때 edit로 넘어가
                context,
                CupertinoPageRoute(builder: (context) => aerobic_page()));
          },
          color: Colors.indigo[900],
          textColor: Colors.white,
          child: Text('시작하기',
              textAlign: TextAlign.left,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
        ),
      ),
    );
  }
}

