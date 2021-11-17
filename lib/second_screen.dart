import 'package:flutter/material.dart';
import 'dart:math';

class SecondScreen extends StatefulWidget {
  @override
  createState() =>  SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("4 квадрата"),
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
                _makeContainer(context),
                _makeContainer(context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _makeContainer(context),
                _makeContainer(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _makeContainer(context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    width: MediaQuery.of(context).size.width/2 - 30,
    height: MediaQuery.of(context).size.width/2 - 30,
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
  );
}
