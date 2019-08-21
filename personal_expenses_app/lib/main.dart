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
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      border: Border.all(color: Colors.purple, width: 2)),
                  child: Text(
                    transaction.formattedAmount,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.purple),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(transaction.formattedDate, style: TextStyle(color: Colors.grey[800], fontSize: 16),)
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
