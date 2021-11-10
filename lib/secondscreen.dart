import 'package:flutter/material.dart';
import 'dart:math';

class SecondScreen extends StatefulWidget {
  @override
  createState() => new SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  Color _blockColor1 = Colors.grey;
  Color _blockColor2 = Colors.grey;
  Color _blockColor3 = Colors.grey;
  Color _blockColor4 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("4 квадрата")),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          setState(() {
          _blockColor1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          _blockColor2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          _blockColor3 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          _blockColor4 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
     
          });
          
          
        },
        tooltip: 'generate colors',
        child: const Icon(Icons.add),
      ),
      body:Container(
        width: MediaQuery.of(context).size.width-60,
        height: MediaQuery.of(context).size.width-60,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 110),
      child: Column(        
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                         color: _blockColor1),
                        Container(width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                          color: _blockColor2),
                      ],
                    ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55,
                          color: _blockColor3),
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                         color: _blockColor4),
                      ],
                    ),
          )
        ]
        )
      )
    );
  }
}


/*

class SecondScreen extends StatelessWidget {
  Color _blockColor1 = Colors.grey;
  Color _blockColor2 = Colors.grey;
  Color _blockColor3 = Colors.grey;
  Color _blockColor4 = Colors.grey;
  void changeColor() {
  _blockColor1 = Colors.green;
      _blockColor2 = Colors.green;
      _blockColor3 = Colors.green;
      _blockColor4 = Colors.green;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("4 квадрата")),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          
          _blockColor1 = Colors.green;
          _blockColor2 = Colors.green;
          _blockColor3 = Colors.green;
          _blockColor4 = Colors.green;
        },
        tooltip: 'generate colors',
        child: const Icon(Icons.add),
      ),
      body:Container(
        width: MediaQuery.of(context).size.width-60,
        height: MediaQuery.of(context).size.width-60,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 110),
      child: Column(        
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                         color: _blockColor1),
                        Container(width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                          color: _blockColor2),
                      ],
                    ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55,
                          color: _blockColor3),
                        Container(
                         width: MediaQuery.of(context).size.width/2-55,
                         height:  MediaQuery.of(context).size.width/2-55, 
                         color: _blockColor4),
                      ],
                    ),
          )
        ]
        )
      )
    );
  }
}*/