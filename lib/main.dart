import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/features/screens/login_screen.dart';

void main() {
  runApp(const NiuApp());
}

class NiuApp extends StatelessWidget {
  const NiuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'niu app',
      theme: ThemeData(
        fontFamily: 'Lato',
        scaffoldBackgroundColor: creme,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        // més rutes per afegir
      },
    );
  }
}
