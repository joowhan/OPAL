import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'package:cupertino_timer/cupertino_timer.dart';
import 'package:opalapp/screens/disabled/Flexibility/Flexibility_page.dart';

import 'Flexibility_D_goodjob.dart';

class flexibility_breathing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: breathing(),
    );
  }
}
class breathing extends StatefulWidget {
  @override
  _breathingState createState() => _breathingState();
}

class _breathingState extends State<breathing> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만들고 VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공.
    _controller = VideoPlayerController.asset(
      'video/breathing.mp4',
    );

    // 컨트롤러를 초기화하고 추후 사용하기 위해 Future를 변수에 할당합니다.
    _initializeVideoPlayerFuture = _controller.initialize();

    // 비디오를 반복 재생하기 위해 컨트롤러를 사용합니다.
    _controller.setLooping(true);
    _controller.play();

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
      body: Container(
        child: Column(
          children: <Widget>[
            //Padding(padding: EdgeInsets.all(10.0)),
            Container(
              padding: EdgeInsets.only(top: 35.0),
              height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
                  0.4,
              width: 400,
              /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), //모서리를 둥글게
                  border: Border.all(color: Colors.black12, width: 3)),*/
              child: FutureBuilder(
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
            ),
            Container(
                margin: const EdgeInsets.only(top: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('숨쉬기',
                        style: TextStyle(fontFamily: "Gmarket",
                            fontWeight: FontWeight.bold, fontSize: 40),
                        textAlign: TextAlign.left),
                  ],
                )),

            Container(
                margin: const EdgeInsets.all(65.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('10 회',
                        style: TextStyle(fontFamily: "Gmarket",
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Color(hexColor('#0E49B5'))),
                        textAlign: TextAlign.left),
                  ],
                )),

            //buttons
            Column(
              children: <Widget>[
                Column(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // 완료. 다음
                      height: 60,
                      width: 350,
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => F_goodjob()));
                          setState(() {
                            // 영상이 재생 중이라면, 일시 중지 시킵니다.
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            }
                          });
                          //Navigator.pushNamed(context, '/first');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0))),
                        color: Color(hexColor('#0E49B5')),
                        splashColor: Colors.indigo,
                        textColor: Colors.white,
                        label: Text('완료',
                            style: TextStyle(fontFamily: "Gmarket",
                                fontWeight: FontWeight.bold, fontSize: 35)),
                        icon: Icon(Icons.arrow_forward_rounded,
                            size: 0, color: Colors.black54),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

