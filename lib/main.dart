import 'package:flutter/material.dart';
import 'package:opalapp/screens/AccountInfo.dart';
import 'package:opalapp/screens/AccountInfo.dart';
import 'package:opalapp/screens/Recommend.dart';
import 'package:opalapp/screens/home.dart';
import 'package:opalapp/screens/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  final List<Widget> _children = [ Account(),Home(), fitnessList()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.white,

          title: Text('OPAL 운동',

              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color:Colors.black,
              )
          )
        ),
        body:
        _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.indigo[900],
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                // ignore: deprecated_member_use
                title: Text('Account'),
                ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                //label:'Home',
                // ignore: deprecated_member_use
                title: Text('Home'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.accessibility_new),
                // ignore: deprecated_member_use
                title: Text('Start Training'),
              )
            ]));
  }
}