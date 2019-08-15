import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'app',
        home: Scaffold(
          appBar: AppBar(
            title: Text('app'),
          ),
          body: Container(
            child: Text(
              'Hey there!',
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
