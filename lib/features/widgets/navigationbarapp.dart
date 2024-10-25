import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';

class NavigationBarNiu extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavigationBarNiu(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: creme,
      selectedItemColor: noir,
      unselectedItemColor: marro,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.language),
          label: 'Global Position',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
