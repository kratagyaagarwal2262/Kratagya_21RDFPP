/*
This class will return all the light controlling buttons.
    There was a cluster of such button inside a nested column and  row pattern
    It is very difficult to make changes in such a complex nested row/column
structure
    So this class will return the row and make the thing a little  simple;*/

import 'package:flutter/material.dart';
import 'package:touchstone/arguments.dart';
class Rows {
  /*String impagepath;
  String roomname;
  int lights;*/
  Widget rows(String imagepath, String roomname, int lights, BuildContext context) {
    return Container(
      width: 160.0,
      height: 135.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'light',arguments: Arguments(roomname,lights));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('$imagepath', width: 65.0,),
              Text("$roomname",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                ),
              ),
              SizedBox(height: 5.0,),
              Text("$lights Lights",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.yellow[700]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  /*Row({required this.impagepath,required this.roomname,required this.lights});*/
}

