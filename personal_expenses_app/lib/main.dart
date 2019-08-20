import 'package:flutter/material.dart';
import 'package:personal_expenses_app/classes/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'Breakfast', amount: 4.95, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Text('CHART!'),
              )),
          Card(
            child: Text('LIST!'),
          )
        ],
      ),
    );
  }
}
