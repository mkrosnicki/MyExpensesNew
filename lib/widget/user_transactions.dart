import 'package:MyExpensesNew/models/transaction.dart';
import 'package:MyExpensesNew/widget/transaction_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
    Transaction(
        id: '1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: '1', title: 'New computer', amount: 1000.99, date: DateTime.now()),
    Transaction(
        id: '1', title: 'New hard disk', amount: 89.99, date: DateTime.now()),
  ];
  
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(id: DateTime.now().toString(), title: title, amount: amount, date: DateTime.now());
    setState(() {
      this._userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
