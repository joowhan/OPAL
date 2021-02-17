import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/screens/disabled/Flexibility/Flexibility_pullNeck.dart';
import '../M_strength/M_Climbinghands.dart';
import 'M_HorizontalArmPull.dart';
import 'M_VerticalArmPull.dart';
import 'M_Spreadingbotharms.dart';
import 'M_Kneakbackandturnback.dart';
import 'M_Raisingdumbbells.dart';
import 'M_Breathing.dart';

class M_page extends StatefulWidget {
  @override
  _M_pageState createState() => _M_pageState();
}

class _M_pageState extends State<M_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/HorizontalArmPull': (context) => SecondScreen(),
        '/VerticalArmPull': (context) => ThirdScreen(),
        '/Spreadingbotharms': (context) => FourthScreen(),
        '/Kneakbackandturnback': (context) => FifthScreen(),
        '/Raisingdumbbells': (context) => SixthScreen(),
        '/breathing': (context) => LastScreen(),
      }, //지금은 필요가 없는 부분
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_climbinghands(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_horizontalArmPull(),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_verticalArmPull(),
    );
  }
}
class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_spreadingbotharms(),
    );
  }
}
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_kneakbackandturnback(),
    );
  }
}
class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_raisingdumbbells(),
    );
  }
}
class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: m_breathing(),
    );
  }
}