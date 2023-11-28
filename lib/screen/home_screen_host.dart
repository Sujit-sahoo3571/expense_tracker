import 'package:expense_tracker/screen/home_screen_tab.dart';
import 'package:expense_tracker/screen/stat_screen_tab.dart';
import 'package:expense_tracker/screen/user_profile_tab.dart';
import 'package:expense_tracker/screen/wallet_screen_tab.dart';
import 'package:flutter/material.dart';

class HomeScreenHost extends StatefulWidget {
  const HomeScreenHost({super.key});

  @override
  State<HomeScreenHost> createState() => _HomeScreenHostState();
}

class _HomeScreenHostState extends State<HomeScreenHost> {
  var _currentIndex = 0;

  Widget buildContentTab(int index) {
    switch (index) {
      case 0:
        return const HomeScreenTab();

      case 1:
        return const StatScreenTab();

      case 2:
        return const WalletScreenTab();

      case 3:
        return const UserProfileTab();

      default:
        return const HomeScreenTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContentTab(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // print(_currentIndex);
          });
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart_outlined), label: "stat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined), label: "wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
      ),
    );
  }
}
