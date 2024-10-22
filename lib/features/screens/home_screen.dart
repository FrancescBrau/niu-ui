import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            normalVerticalSpacing,
            Image.asset('assets/images/Logo.png'),
            normalVerticalSpacing,
            const Text('This is home Screen')
          ],
        ),
      ),
    );
  }
}
