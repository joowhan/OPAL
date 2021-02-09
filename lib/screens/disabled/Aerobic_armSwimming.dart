import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opalapp/screens/disabled/Aerobic_page.dart';


class aerobic_armSwimmings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: armSwimming(),
    );
  }
}
class armSwimming extends StatefulWidget {
  @override
  _armSwimmingState createState() => _armSwimmingState();
}

class _armSwimmingState extends State<armSwimming> {
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
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

