import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/main.dart';
import 'package:opalapp/screens/disabled/Aerobic/Aerobic_updown.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

import 'Aerobic.dart';
import 'Aerobic_D_Goodjob.dart';
import 'Aerobic_armSwimming.dart';
import 'Aerobic_bounce.dart';
import 'Aerobic_breathing.dart';
import 'Aerobic_pushWall.dart';
import 'Aerobic_rowing.dart';

class aerobic_page extends StatefulWidget {
  @override
  _aerobic_pageState createState() => _aerobic_pageState();
}

class _aerobic_pageState extends State<aerobic_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator',
        initialRoute: '/',
        routes: {
          '/': (context) => FirstScreen(),
          '/bounce': (context) => SecondScreen(),
          '/armSwimming': (context) => ThirdScreen(),
          '/pushWall': (context) => FourthScreen(),
          '/rowing': (context) => FifthScreen(),
          '/breathing': (context) => LastScreen(),
        }, //지금은 필요가 없는 부분
      );
  }
}

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
    return MaterialApp(
      home: aerobic_bounce(),
    );
  }
}
/*
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
*/
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_armSwimming(),
    );
  }
}
class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_pushWall(),
    );
  }
}
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_rowing(),
    );
  }
}

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_breathing(),
    );
  }
}