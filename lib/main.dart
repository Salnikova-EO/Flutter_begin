import 'package:flutter/material.dart';

void main() => runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen())
);

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Главная")),
      body: Column(
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
                    Text('4 квадрата', style: TextStyle(color: Colors.black,   
                    fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Colors.black),
                  ],
                ) ,
                onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                      },
              ),
            )
          ),
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
                    Text('Цветной список', style: TextStyle(color: Colors.black,   
                    fontSize: 16)),
                  Icon(Icons.arrow_forward, color: Colors.black),
                  ],
                ) ,
                onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));
                      },
              ),
            )
          ),
        ]        
      ),

    );
  }
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