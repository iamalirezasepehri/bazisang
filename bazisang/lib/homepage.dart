import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('سنگ  کاغذ  قیچی'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(width: double.infinity),
          Image(
            image: AssetImage('images/$top.png'),
            height: 100.0,
          ),
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  bottom = Random().nextInt(3) + 1;
                  top = Random().nextInt(3) + 1;
                });
              },
              child: Text(
                'شروع کن',
                style: TextStyle(fontSize: 20.0),
              )),
          Image(
            image: AssetImage('images/$bottom.png'),
            height: 100.0,
          ),
        ],
      )),
    );
  }
}
