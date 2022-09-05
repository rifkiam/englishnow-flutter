import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins'
      ),
      home: FirstPageLayoutBuilder(),
    );
  }
}

class FirstPageLayoutBuilder extends StatelessWidget
{
  FirstPageLayoutBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
    {
      if (constraints.maxWidth >= 860)
      {
        return WebFirstPage();
      }
      else
      {
        return MobileFirstPage();
      }
    });
  }
}

class WebFirstPage extends StatefulWidget
{
  @override
  _WebFirstPage createState() => _WebFirstPage();
}

class _WebFirstPage extends State<WebFirstPage>
{
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      resizeToAvoidBottomInset: false,
      body: Center
      (
        child: SizedBox
        (
          width: 850,
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text("What should we call you?", style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),),
              Padding
              (
                padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
                child: TextField
                (
                  textAlign: TextAlign.center,
                  controller: nameController,
                  decoration: InputDecoration
                  (
                    hintText: "Please enter your name here", hintStyle: TextStyle(fontSize: 15)
                  ),
                  onSubmitted: (String value)
                  {
                    value = nameController.text;
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      Timer(Duration(seconds: 2), () {});
                      return WelcomePage(value);
                    }));
                  },
                )
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose()
  {
    nameController.dispose();
    super.dispose();
  }
}

class MobileFirstPage extends StatefulWidget
{
  @override
  _MobileFirstPage createState() => _MobileFirstPage();
}

class _MobileFirstPage extends State<MobileFirstPage>
{
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      resizeToAvoidBottomInset: false,
      body: Center
        (
        child: Card
          (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text("What should we call you?", style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),),
              Padding
                (
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: TextField
                    (
                    textAlign: TextAlign.center,
                    controller: nameController,
                    decoration: InputDecoration
                      (
                        hintText: "Please enter your name here", hintStyle: TextStyle(fontSize: 12)
                    ),
                    onSubmitted: (String value)
                    {
                      value = nameController.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        Timer(Duration(seconds: 2), () {});
                        return WelcomePage(value);
                      }));
                    },
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose()
  {
    nameController.dispose();
    super.dispose();
  }
}