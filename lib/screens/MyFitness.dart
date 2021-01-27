import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'dart:convert';
import 'home.dart';

class myFitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 눌렀을 때 첫 번째 route로 되돌아 갑니다.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}