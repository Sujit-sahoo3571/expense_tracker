import 'package:expense_tracker/data/profile_details.dart';
import 'package:flutter/material.dart';

class ProfileSettingList extends StatelessWidget {
  final AccountDetails accountDetails;
  const ProfileSettingList({super.key, required this.accountDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: Icon(
          accountDetails.icon,
          size: 30,
        ),
        title: Text(accountDetails.name),
        trailing: const Icon(
          Icons.arrow_right_outlined,
          size: 35,
        ),
      ),
    );
  }
}
