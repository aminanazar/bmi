import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statefull/Screen/home.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreenState(),
    );
  }
}
