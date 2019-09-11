import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatelessWidget {

  final List<Transaction> _transactions;
  const UserTransactions(this._transactions);

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
         TransactionList(
          transactions: _transactions,
        ),
      ],
    ),);
  }
}
