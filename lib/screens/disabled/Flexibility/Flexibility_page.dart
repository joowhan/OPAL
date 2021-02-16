import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/screens/disabled/Flexibility/Flexibility_pullNeck.dart';

class flexibility_page extends StatefulWidget {
  @override
  _flexibility_pageState createState() => _flexibility_pageState();
}

class _flexibility_pageState extends State<flexibility_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/pullNeckSide': (context) => SecondScreen(),
        '/diagonalNeck': (context) => ThirdScreen(),
        '/spreadArms': (context) => FourthScreen(),
        '/elbowsToBody': (context) => FifthScreen(),
        '/elbowsBackhead': (context) => SixthScreen(),
        '/squeeze': (context) => SeventhScreen(),
        '/backWaist': (context) => EighthScreen(),
        '/breathing': (context) => LastScreen(),
      }, //지금은 필요가 없는 부분
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: flexibility_pullNeck(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (),
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
class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_rowing(),
    );
  }
}

class SeventhScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aerobic_rowing(),
    );
  }
}

class EighthScreen extends StatelessWidget {
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