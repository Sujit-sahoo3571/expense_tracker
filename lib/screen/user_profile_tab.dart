import 'package:expense_tracker/data/profile_details.dart';
import 'package:expense_tracker/widgets/profile_location_tile.dart';
import 'package:expense_tracker/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_setting_list.dart';

class UserProfileTab extends StatelessWidget {
  const UserProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilePic(
                userDetails: UserDetails(
                    userName: "Sujit Kumar Sahoo",
                    designation: "Software Developer",
                    imgUrl: "assets/images/profile.jpg"),
              ),
              const Text(
                "General",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              ProfileLocationTile(
                profileDetails: ProfileDetails(
                    location: "Bank Location",
                    address: "Ameerpet , Hyderabad ",
                    icon: Icons.location_on),
              ),
              ProfileLocationTile(
                profileDetails: ProfileDetails(
                    location: "My Wallet",
                    address: "Manage Your Saved Wallet ",
                    icon: Icons.wallet_outlined),
              ),
              const Text(
                "Account",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              ProfileSettingList(
                accountDetails:
                    AccountDetails(icon: Icons.person, name: "My Account"),
              ),
              ProfileSettingList(
                accountDetails: AccountDetails(
                    icon: Icons.notifications_none_outlined,
                    name: "Notification"),
              ),
              ProfileSettingList(
                accountDetails: AccountDetails(
                    icon: Icons.privacy_tip_rounded, name: "Privacy"),
              ),
              ProfileSettingList(
                accountDetails:
                    AccountDetails(icon: Icons.info_outline, name: "About"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
