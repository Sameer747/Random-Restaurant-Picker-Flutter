import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> restaurant = [
    'Burger Lab',
    'Pizza Hut',
    'Burger O Clock',
    'Burger King',
    'Subway',
    'One Potato Two Potato',
    'Grill\'O',
    'KFC'
  ];

  // ignore: non_constant_identifier_names
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: Text('Random Restaurant Picker App'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What do you want to eat?',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                restaurant[currentIndex],
                style: TextStyle(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              FlatButton(
                onPressed: () {
                  UpdatetIndex();
                },
                child: Text('Pick Restaurant'),
                color: Colors.amberAccent,
                textColor: Colors.black,
              )
            ],
          ))),
    );
  }

  // ignore: non_constant_identifier_names
  void UpdatetIndex() {
    final random = Random();
    final index = random.nextInt(restaurant.length);
    setState(() {
      currentIndex = index;
    });
  }
}
