import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';
import 'package:niu/features/widgets/login_button.dart';
import 'package:niu/features/widgets/login_text_flied.dart';
import 'package:niu/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const LoginTextField(),
            normalVerticalSpacing,
            const LoginTextField(),
            normalVerticalSpacing,
            LoginButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NiuApp(),
                  ));
                },
                child: const Text("Login")),
            const Text("Forgot Password"),
            const Text("Need an account?"),
          ],
        ),
      ),
    );
  }
}
