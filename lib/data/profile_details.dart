import 'package:flutter/cupertino.dart';

class ProfileDetails {
  final String location;
  final String address;
  final IconData icon;

  ProfileDetails(
      {required this.location, required this.address, required this.icon});
}

class UserDetails {
  final String userName;
  final String designation;
  final String imgUrl;

  UserDetails(
      {required this.userName,
      required this.designation,
      required this.imgUrl});
}

class AccountDetails {
  final IconData icon;
  final String name;
  AccountDetails({required this.icon, required this.name});
}
