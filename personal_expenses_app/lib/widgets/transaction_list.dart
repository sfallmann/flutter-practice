import 'package:flutter/material.dart';
import '../models/transaction.dart';



class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  const TransactionList({ @required this.transactions });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          border:
                              Border.all(color: Colors.purple[200], width: 2)),
                      child: Text(
                        transactions[index].formattedAmount,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.purple),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        transactions[index].formattedDate,
                        style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      )
                    ],
                  )
                ],
              ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
