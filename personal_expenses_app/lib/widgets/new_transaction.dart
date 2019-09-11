import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  
  final Function onAddTransaction;
  NewTransaction({ @required this.onAddTransaction });

  @override
  _NewTransactionState createState() => _NewTransactionState();
}


class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
 
  void submitData() {
    final String name = nameController.text;
    final double amount = double.parse(amountController.text).isNaN ? 0 : double.parse(amountController.text);

    if (name.isEmpty || amount <= 0) return;

    widget.onAddTransaction(name, amount);
    Navigator.of(context).pop();
  }

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
                onSubmitted: (_) => submitData(),               
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                child: Text('Add Transaction'),
                onPressed: submitData,
                textColor: Colors.purple,
              ),
            ],
          ),
        ));
  }
}
