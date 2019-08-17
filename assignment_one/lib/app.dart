import 'package:flutter/material.dart';
import 'textControl.dart';
import 'textOutput.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}


class _AppState extends State {
  // This widget is the root of your application.
  bool _isToggled = false;

  String get text {
    return _isToggled ? 'Original text' : 'Changed text';
  }

  void _toggleText() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment One',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Assignment One')),
        body: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
            TextOutput(text),
            TextControl(_toggleText),
          ],),
        ),
      ),
    );
  }
}
