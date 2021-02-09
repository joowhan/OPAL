import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'Aerobic.dart';


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
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('팔 위 아래로 흔들기 '),
      ),
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

              //buttons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10.0)),
                    Container( //
                        child:
                        RaisedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              //push를 눌렀을 때 edit로 넘어가
                                context,
                                CupertinoPageRoute(builder: (context) => aerobic()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0))),
                          color: Colors.white60,
                          splashColor: Colors.blue,
                          textColor: Colors.black45,
                          label: Text('',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                          icon: Icon(Icons.arrow_back_rounded,
                              size: 55, color: Colors.black54),
                        ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Container(
                        child: RaisedButton.icon(
                          onPressed: () {
                            // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이
                            // 보여집니다.
                            setState(() {
                              // 영상이 재생 중이라면, 일시 중지 시킵니다.
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                // 만약 영상이 일시 중지 상태였다면, 재생합니다.
                                _controller.play();
                              }
                            });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0))),
                          color: Colors.white60,
                          splashColor: Colors.red,
                          textColor: Colors.black45,
                          label: Text('',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                          icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 55, color: Colors.black54),
                        )
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Container(
                      child:
                      RaisedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            //push를 눌렀을 때 edit로 넘어가
                              context,
                              CupertinoPageRoute(builder: (context) => aerobic()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40.0))),
                        color: Colors.white60,
                        splashColor: Colors.red,
                        textColor: Colors.black45,
                        label: Text('',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                        icon: Icon(Icons.arrow_forward_rounded,
                            size: 55, color: Colors.black54),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0)),
                  ],
              )
              //buttonSection1,
              /*FloatingActionButton(
                onPressed: () {
                  // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이
                  // 보여집니다.
                  setState(() {
                    // 영상이 재생 중이라면, 일시 중지 시킵니다.
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      // 만약 영상이 일시 중지 상태였다면, 재생합니다.
                      _controller.play();
                    }
                  });
                },
                // 플레이어의 상태에 따라 올바른 아이콘을 보여줍니다.
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 30,
                ),
              ),*/


            ],
          ),
        ),

      );

      //floatingActionButtonLocation: FloatingActionButtonLocation.,

      // 이 마지막 콤마는 build 메서드에 자동 서식이 잘 적용될 수 있도록 도와줍니다.
  }
}


