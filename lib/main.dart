import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Magic8 ball'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Magic8body(),
      ),
    ),
  );
}

class Magic8body extends StatefulWidget {
  @override
  _Magic8bodyState createState() => _Magic8bodyState();
}

class _Magic8bodyState extends State<Magic8body> {
  int randomno = 1;
  @override
  Widget build(BuildContext context) {
    int generateRandom() {
      setState(() {
        return randomno = Random().nextInt(5) + 1;
      });
    }

    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$randomno.png'),
          onPressed: () {
            generateRandom();
          },
        ),
      ),
    );
  }
}
