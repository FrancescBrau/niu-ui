import 'package:flutter/material.dart';
import 'package:niu/features/widgets/login_button.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "E-mail",
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
        ],
      ),
    );
  }
}
