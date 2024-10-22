import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Email'),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your email',
            ),
          ),
          normalVerticalSpacing,
          const Text('Password'),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your password',
            ),
          ),
          normalVerticalSpacing,
          const Text('Date of Birth'),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'MM / DD / YYYY',
            ),
            onTap: () {
              // Lógica para abrir el selector de fecha
            },
          ),
        ],
      ),
    );
  }
}
