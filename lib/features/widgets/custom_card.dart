import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black45.withOpacity(0.2),
            border: Border.all(color: Colors.white60, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontSize: normalTextSize,
                  fontWeight: FontWeight.bold,
                  color: noir,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: smallTextSize,
                  color: noir,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
