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
    Transaction(
        id: 't1', title: 'Breakfast', amount: 4.95, date: DateTime.now()),
    Transaction(id: 't2', title: 'Lunch', amount: 6.95, date: DateTime.now()),
  ];

  List<Widget> mapTransactionsToWidgets() {
    return transactions.map((transaction) {
      return Container(
          width: double.infinity,
          child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(child: Text(transaction.amount.toString())),
              Column(
                children: <Widget>[
                  Text(transaction.title),
                  Text(transaction.date.toString())
                ],
              )
            ],
          )));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Text('CHART!'),
              )),
          Column(
            children: mapTransactionsToWidgets(),
          )
        ],
      ),
    );
  }
}
