import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  Function addNewTransactionFunction;

  NewTransaction(this.addNewTransactionFunction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) => this.titleInput = value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => this.amountInput = value,
              controller: amountController,
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: () {
                addNewTransactionFunction(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add transaction'),
            )
          ],
        ),
      ),
    );
  }
}
