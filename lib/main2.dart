import 'dart:ffi';
import 'dart:ui';
import 'dashboard_listviewbuilder.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget
{
  final String value;
  WelcomePage(this.value);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: InkWell
        (
            child: Container
            (
              color: Colors.white,
              child: Center
              (
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text("Welcome to englishnow, ${value}", style: TextStyle(fontSize: 28), textAlign: TextAlign.center,),
                      SizedBox(height: 9),
                      Text("Tap anywhere to proceed", style: TextStyle(fontSize: 13, color: Colors.black45),),
                    ],
                  ),
              ),
            ),
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailScreenLayoutBuilder(value: value);},),);
          },
        )
    );
  }
}