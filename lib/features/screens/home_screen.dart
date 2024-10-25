import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/features/screens/global_position.dart';
import 'package:niu/features/screens/profile.dart';
import 'package:niu/features/widgets/navigationbarapp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedPage(int index) {
    switch (index) {
      case 0:
        return const GlobalPositionScreen();
      case 1:
        return const ProfileScreen();
      default:
        return const GlobalPositionScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getSelectedPage(_selectedIndex),
      bottomNavigationBar: NavigationBarNiu(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      backgroundColor: marro,
    );
  }
}
