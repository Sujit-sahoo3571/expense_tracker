import 'package:expense_tracker/data/profile_details.dart';
import 'package:flutter/material.dart';

class ProfileLocationTile extends StatelessWidget {
  final ProfileDetails profileDetails;
  const ProfileLocationTile({super.key, required this.profileDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        // contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
            side: const BorderSide(),
            borderRadius: BorderRadius.circular(10.0)),
        leading: Icon(
          profileDetails.icon,
          size: 30,
        ),
        title: Text(profileDetails.location),
        subtitle: Text(profileDetails.address),
        trailing: const Icon(
          Icons.arrow_right_outlined,
          size: 35,
        ),
      ),
    );
  }
}
