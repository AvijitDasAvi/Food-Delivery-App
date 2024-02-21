import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/order_page.dart';
import 'package:food_delivery_app/pages/profile_page.dart';
import 'package:food_delivery_app/pages/wallet_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTapIndex = 0;
  late List<Widget> pages;
  late List<Widget> currentPage;
  late HomePage home;
  late OrderPage order;
  late ProfilePage profile;
  late WalletPage wallet;

  @override
  void initState() {
    home = HomePage();
    order = OrderPage();
    wallet = WalletPage();
    profile = ProfilePage();
    pages = [home, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 45.0,
        color: Colors.black,
        backgroundColor: Colors.white,
        animationDuration: const Duration(
          milliseconds: 500,
        ),
        onTap: (int index) {
          setState(() {
            currentTapIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTapIndex],
    );
  }
}
