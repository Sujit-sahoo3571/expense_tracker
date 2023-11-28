import 'dart:math';

import 'package:expense_tracker/data/UserInfo.dart';
import 'package:flutter/material.dart';

class TransactionListTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionListTile({super.key, required this.transaction});

  Color getColor() {
    return Color(Random().nextInt(0xff0000ff));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: getColor(),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 1.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 10.0,
              spreadRadius: 6.0)
        ],
      ),
      child: ListTile(
        leading: SizedBox(
          width: 80.0,
          height: 80.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/images/profile.jpg",
                fit: BoxFit.cover,
              )),
        ),
        title: Text(transaction.itemCategoryName),
        subtitle: Text(
          transaction.itemName,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Column(
          children: [
            Text(transaction.amount),
            Text(transaction.date),
          ],
        ),
      ),
    );
  }
}
