import 'package:expense_tracker/data/UserInfo.dart';
import 'package:expense_tracker/widgets/income_card.dart';
import 'package:expense_tracker/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  // final UserInfo userInfo;
  const HomeScreenTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),

            ListTile(
              title: Text("Hey, ${userdata.name} !"),
              leading: SizedBox(
                width: 80,
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    fit: BoxFit.cover,
                    scale: 1.5,
                  ),
                ),
              ),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.notifications_active,
                    size: 25,
                    color: Colors.blue,
                  ),
                  onPressed: () {}),
            ),

            Center(
              child: Column(
                children: [
                  Text("\$${userdata.totalBalance}"),
                  const Text("Total Balance "),
                ],
              ),
            ),

            //expense card row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: IncomeCard(
                  incomeData: IncomeData(
                      label: userdata.inflow,
                      amount: "\$500,000",
                      icon: Icons.arrow_upward_outlined),
                )),
                Expanded(
                    child: IncomeCard(
                  incomeData: IncomeData(
                      label: userdata.outflow,
                      amount: "\$600,000",
                      icon: Icons.arrow_downward_outlined),
                )),
              ],
            ),

            // recent transaction list
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Recent Transaction ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // fontFamily: "Verdana",

                    color: Colors.black87),
              ),
            ),
            const Text(
              "Today",
              style: TextStyle(color: Colors.grey),
            ),
            ...transactionLists1.map(
                (transaction) => TransactionListTile(transaction: transaction)),

            const Text(
              "Yesterday ",
              style: TextStyle(color: Colors.grey),
            ),

            ...transactionLists2.map(
                (transaction) => TransactionListTile(transaction: transaction))
          ],
        ),
      ),
    );
  }
}
