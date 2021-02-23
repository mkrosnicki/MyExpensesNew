import 'package:MyExpensesNew/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {

  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>>get groupedTransactionsValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index),);

      double totalSum = 0.0;
      for (var i = 0; i < recentTransactions.length; i++) {
        var transactionDate = recentTransactions[i].date;
        if (transactionDate.day == weekDay.day &&
            transactionDate.month == weekDay.month &&
            transactionDate.year == weekDay.month) {
          totalSum += recentTransactions[i].amount;
        }
      }

      return {'day': DateFormat.E(weekDay), 'amount': totalSum};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
