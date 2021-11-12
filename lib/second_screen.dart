import 'package:flutter/material.dart';
import 'dart:math';

class SecondScreen extends StatefulWidget {
  @override
  createState() => new SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("4 квадрата"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'generate colors',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _makeContainer(),
                _makeContainer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _makeContainer(),
                _makeContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _makeContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    width: 200,
    height: 200,
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
  );
}
