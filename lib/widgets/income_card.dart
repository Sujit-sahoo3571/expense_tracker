import 'package:expense_tracker/utils/constant_variable.dart';
import 'package:flutter/material.dart';

class IncomeData {
  final String label;
  final String amount;
  final IconData icon;

  IncomeData({required this.label, required this.amount, required this.icon});
}

class IncomeCard extends StatelessWidget {
  final IncomeData incomeData;
  const IncomeCard({super.key, required this.incomeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: incomeData.label == "Income"
            ? Colors.lightBlueAccent
            : Colors.redAccent,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                incomeData.label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: fontSizeTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  incomeData.amount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: fontSizeHeading,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            incomeData.icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
