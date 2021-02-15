import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'Aerobic.dart';
import 'package:opalapp/screens/disabled/Aerobic_page.dart';
import 'package:opalapp/screens/disabled/Aerobic_bounce.dart';
import 'package:cupertino_timer/cupertino_timer.dart';


class aerobic_updown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: updown(),
    );
  }
}
class updown extends StatefulWidget {
  @override
  _updownState createState() => _updownState();
}
//동영상
class _updownState extends State<updown> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만들고 VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // 컨트롤러를 초기화하고 추후 사용하기 위해 Future를 변수에 할당합니다.
    _initializeVideoPlayerFuture = _controller.initialize();

    // 비디오를 반복 재생하기 위해 컨트롤러를 사용합니다.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // 자원을 반환하기 위해 VideoPlayerController를 dispose 시키세요.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[800],
      //   title: Text('유산소 ',style: TextStyle(
      //     fontSize: 30,
      //     fontWeight: FontWeight.bold
      //   ),),
      // ),
      // VideoPlayerController가 초기화를 진행하는 동안 로딩 스피너를 보여주기 위해
      // FutureBuilder를 사용합니다.

      body:
      Container(
        child: Column(
          children: <Widget>[
            //Padding(padding: EdgeInsets.all(10.0)),
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // 만약 VideoPlayerController 초기화가 끝나면, 제공된 데이터를 사용하여
                  // VideoPlayer의 종횡비를 제한하세요.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // 영상을 보여주기 위해 VideoPlayer 위젯을 사용합니다.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // 만약 VideoPlayerController가 여전히 초기화 중이라면,
                  // 로딩 스피너를 보여줍니다.
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            Container(
                margin: const EdgeInsets.only(top: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '팔 위아래로 흔들기',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            ),

            Container(
                margin: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '10 회',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60,color: Colors.blueAccent),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            ),

            //buttons
            Column(
              children: <Widget>[
                Column(

                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10.0)),
                    // Container( // 뒤로가기. 이 경우 리스트 화면을 간다.
                    //   child:
                    //   RaisedButton.icon(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           CupertinoPageRoute(builder: (context) => aerobic())); // 다시 리스트 화면으로 이동한다.
                    //     },
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    //     color: Colors.white60,
                    //     splashColor: Colors.blue,
                    //     textColor: Colors.black45,
                    //     label: Text('', // 글자를 추가할 경우가 있음 지우지 말것
                    //         style:
                    //         TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                    //     icon: Icon(Icons.arrow_back_rounded,
                    //         size: 55, color: Colors.black54),
                    //   ),
                    // ),

                    Container( //일시정
                        child: RaisedButton.icon(
                          onPressed: () {
                            // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이 보여진다.
                            setState(() {
                              // 영상이 재생 중이라면, 일시 중지.
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                // 만약 영상이 일시 중지 상태였다면, 재생.
                                _controller.play();
                              }
                            });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          color: Colors.white60,
                          splashColor: Colors.indigo,
                          textColor: Colors.black87,
                          label: Text('영상 시작',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                          icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 0, color: Colors.black54),
                        )
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),

                    Container( // 완료. 다음
                      child:
                      RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => updownRest()));
                          //Navigator.pushNamed(context, '/first');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        color: Colors.white60,
                        splashColor: Colors.indigo,
                        textColor: Colors.black87,
                        label: Text('넘어가기',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                        icon: Icon(Icons.arrow_forward_rounded,
                            size: 0, color: Colors.black54),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),

    );

    //floatingActionButtonLocation: FloatingActionButtonLocation.,
  }
}

var list1 = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(15),
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                        '다음 운동',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.left
                    ),
                    Text(
                        '바운스',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                        textAlign: TextAlign.left
                    ),
                  ],
                ),
                SizedBox(width: 20,
                ),
                Center(child: Image.asset('images/stars.png',
                height: 75,
                  width:100,
                    )),
              ],
            )
        )
        // ),
      ],
    ),
  ],
);


class updownRest extends StatelessWidget {
  var done = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '휴 식',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                        textAlign: TextAlign.left
                    ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              child:
              CupertinoTimer(
                duration: Duration(minutes: 1),
                startOnInit: true, //무조건 시작
                timeStyle: TextStyle(
                    fontFamily: 'Avenir Next', fontWeight: FontWeight.bold),
                ringColor: Colors.blue,
                ringStroke: 10,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Container(
              child:
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => SecondScreen()));
                  //Navigator.pushNamed(context, '/first');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                color: Colors.white60,
                splashColor: Colors.indigo,
                textColor: Colors.black87,
                label: Text('넘어가기',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                icon: Icon(Icons.arrow_forward_rounded,
                    size: 0, color: Colors.black54),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            list1,
          ],
        ),
      ),
    );
  }
}