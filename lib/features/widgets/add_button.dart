import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const AddButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: onPressed,
          backgroundColor: marro,
          icon: const Icon(
            Icons.add,
            color: pedraBlanca,
          ),
          label: Text(
            label,
            style: const TextStyle(
              color: pedraBlanca,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}