import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void incrementCounter(String color) {
    setState(() {
      print("you have push the button $color");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: (){
                  incrementCounter("Blue");
                },
                tooltip: 'Blue',
                child: Icon(Icons.lightbulb, color: Colors.white,),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: (){
                  incrementCounter("Rouge");
                },
                tooltip: 'Rouge',
                child: Icon(Icons.lightbulb, color: Colors.white),
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: (){
                  incrementCounter("Vert");
                },
                tooltip: 'Vert',
                child: Icon(Icons.lightbulb, color: Colors.white),
              ),
            ],
          ),
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
