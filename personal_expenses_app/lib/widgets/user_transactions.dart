import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_list.dart';
import './new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(id: 't1', title: 'Bfast', amount: 4.95, date: DateTime.now()),
    Transaction(id: 't2', title: 'Lunch', amount: 6.95, date: DateTime.now()),
  ];



  void handleAddTransaction(String name, String amount) {

    setState(() {
      _transactions.add(Transaction(
          id: 't${_transactions.length + 1}',
          title: name,
          amount: double.parse(amount),
          date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( child: Column(
      children: <Widget>[
        Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('CHART!'),
            )),
        NewTransaction(
          onAddTransaction: handleAddTransaction,
        ),
         TransactionList(
          transactions: _transactions,
        ),
      ],
    ),);
  }
}
