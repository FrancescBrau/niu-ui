import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';
import 'package:niu/features/screens/forgot_password.dart';
import 'package:niu/features/screens/registration_screen.dart';
import 'package:niu/features/widgets/login_button.dart';
import 'package:niu/features/widgets/login_text_flied.dart';

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
            LoginButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/home', (Route<dynamic> route) => false);
                },
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: noir,
                ),
                child: const Text("Forgot Password")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: noir,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                child: const Text("Need an account? Create here")),
          ],
        ),
      ),
    );
  }
}
