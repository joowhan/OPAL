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
                        '유산소',
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
                        '팔 위아래로 흔들기',
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
                        '바운스',
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
                        '팔 휘두르기',
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
                        '벽 밀기',
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
                        '노 젓기',
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
          title: Text('유산소 ',
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
