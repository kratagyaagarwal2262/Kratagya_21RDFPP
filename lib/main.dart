import 'package:flutter/material.dart';
import 'package:touchstone/home.dart';
import 'package:touchstone/light_room.dart';
void main()
{
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => Home(),
      'light': (context) => Light(),
    },
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue[900],
      accentColor: Colors.lightBlue[700],
      textTheme: TextTheme(

      ),
      iconTheme: IconThemeData(
        color: Colors.blue[900],
      )
    ),
    home: Home(),
  ));
}