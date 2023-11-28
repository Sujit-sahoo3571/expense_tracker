import 'package:flutter/material.dart';

import '../data/profile_details.dart';

class ProfilePic extends StatelessWidget {
  final UserDetails userDetails;
  const ProfilePic({super.key, required this.userDetails});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                userDetails.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(userDetails.userName),
          ),
          Text(userDetails.designation),
          const Chip(
            label: Text("Edit Profile"),
            backgroundColor: Colors.blue,
            labelStyle: TextStyle(color: Colors.white),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}
