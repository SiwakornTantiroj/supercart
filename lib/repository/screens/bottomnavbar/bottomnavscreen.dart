import 'package:flutter/material.dart';
import 'package:supercart/repository/screens/bottomnavbar/home/homescreen.dart';
import 'package:supercart/repository/widgets/uihelper.dart';
import 'package:supercart/repository/screens/bottomnavbar/category/categoryscreen.dart';
import 'package:supercart/repository/screens/bottomnavbar/cart/cartscreen.dart';
import 'package:supercart/repository/screens/bottomnavbar/profile/profilescreen.dart';

class Bottomnavscreen extends StatefulWidget {
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Categoryscreen(),
    Cartscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "home.png", width: 24, height: 24),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(
              img: "category.png",
              width: 24,
              height: 24,
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(
              img: "shopping-cart.png",
              width: 24,
              height: 24,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "user.png", width: 24, height: 24),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
