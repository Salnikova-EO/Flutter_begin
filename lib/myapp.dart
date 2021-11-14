import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';
import 'fifth_screen.dart';

Map<String, void Function(BuildContext)> screen = {
  '4 квадрата': (context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => SecondScreen())),
  'Цветной список': (context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => ThirdScreen())),
  'Codelab': (context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => FourthScreen())),
  'Асинхронный вызов': (context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => FiftheScreen())),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // Add the 5 lines from here...
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Главная"),
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: screen.length,
            itemBuilder: (BuildContext context, int index) {
              String key = screen.keys.elementAt(index);
              return  Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(
                                        color: Colors.blue, width: 2.0)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("$key",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Icon(Icons.arrow_forward, color: Colors.black),
                          ],
                        ),
                        onPressed: () {
                          screen[key]?.call(context);
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),          
        ));
  }
}
