import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;
  final Function deleteTx;

  TransactionList(this.userTransaction, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: userTransaction.isEmpty
            ? LayoutBuilder(builder: (ctx, constraints) {
                return Column(
                  children: [
                    Text(
                      'No Transactions added yet!',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        ))
                  ],
                );
              })
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return TransactionItem(
                      transaction: userTransaction[index], deleteTx: deleteTx);
                },
                itemCount: userTransaction.length,
              ));
  }
}
