import 'package:flutter/material.dart';
import 'dart:math';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          return new Column(
            children: <Widget>[
              _makeContainer(MediaQuery.of(context).size.width),
            ],
          );
        },
      ),
      appBar: AppBar(
        title: Text("Цветной список"),
      ),
    );
  }
}

Widget _makeContainer(width) {
  return Container(
    width: width,
    height: 48,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
  );
}
