import 'package:flutter/material.dart';
 
Map <String, void Function (BuildContext)> screen = {
    '4 квадрата': (context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen())),
    'Цветной список': (context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen())),
  };
void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: screen.length,
            itemBuilder:  (BuildContext context, int index) {
              String key = screen.keys.elementAt(index);
              return new Column(
                children: <Widget>[
              Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child:SizedBox( 
                        height:48, 
                        child:ElevatedButton(                
                          style: ButtonStyle(   
                                  
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(color: Colors.blue, width: 2.0)))
                                ),
                          child: Row (
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [                    
                              Text("$key", style: TextStyle(color: Colors.black,   
                              fontSize: 16)),
                            Icon(Icons.arrow_forward, color: Colors.black),
                            ],
                          ) ,
                          onPressed: () {
                                screen[key]?.call(context);
                              },
                        ),
                      )
                    ),

                ],
              );
            },
        ),
        appBar: AppBar(title: Text("Главная")),)
  ));
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("4 квадрата")),
      body: Center(
        child: RaisedButton(child: new Text("Вернуться в меню"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Цветной список")),
      body: Center(
        child: RaisedButton(child: new Text("Вернуться в меню"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}