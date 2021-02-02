import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/main.dart';
import 'package:opalapp/screens/disabled/Aerobic_updown.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

import 'Aerobic.dart';

class aerobic_page extends StatefulWidget {
  @override
  _aerobic_pageState createState() => _aerobic_pageState();
}

class _aerobic_pageState extends State<aerobic_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator',
        initialRoute: '/bounce',
        routes: {
          '/': (context) => FirstScreen(),
          '/bounce': (context) => SecondScreen(),
          '/armSwiming': (context) => ThirdScreen(),
          '/pushWall': (context) => FourthScreen(),
          '/rowing': (context) => FifthScreen(),
          '/breathing': (context) => LastScreen(),
        },
      );
  }
}
/*
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
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
        title: Text('Butterfly Video'),
      ),
      // VideoPlayerController가 초기화를 진행하는 동안 로딩 스피너를 보여주기 위해
      // FutureBuilder를 사용합니다.
      body: FutureBuilder(
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
      floatingActionButton: FloatingActionButton(
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
        ),
      ), // 이 마지막 콤마는 build 메서드에 자동 서식이 잘 적용될 수 있도록 도와줍니다.
    );
  }
}*/

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_updown(),
    );
  }
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Third Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/armSwiming');
          },
        ),
      ),
    );
  }
}
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdScreen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Third Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/pushWall');
          },
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FourthScreen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Third Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/rowing');
          },
        ),
      ),
    );
  }
}
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FifthScreen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Third Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/breathing');
          },
        ),
      ),
    );
  }
}

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdScreen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Pop!'),
          onPressed: () {
            Navigator.push(
              //push를 눌렀을 때 edit로 넘어가
                context,
                CupertinoPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ),
    );
  }
}

