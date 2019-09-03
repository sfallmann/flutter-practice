import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final Function onAddTransaction;

  NewTransaction({ @required this.onAddTransaction });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: nameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
              ),
              FlatButton(
                child: Text('Add Transaction'),
                onPressed: () { onAddTransaction(nameController.text, amountController.text); },
                textColor: Colors.purple,
              ),
            ],
          ),
        ));
  }
}
