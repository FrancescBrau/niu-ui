import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final bool isPassword;
  const LoginTextField({super.key, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: TextField(
        obscureText: isPassword,
        decoration: const InputDecoration(
          hintText: "*******",
        ),
      ),
    );
  }
}
