import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Цветной список")),
      body: Center(
        child: RaisedButton(
          child: new Text("Вернуться в меню"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}