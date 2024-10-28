import 'package:flutter/material.dart';

class PropertieScreen extends StatelessWidget {
  final String title;
  final int squareMeters;
  final int rooms;
  final int bathrooms;
  final int wc;
  final String description;
  final VoidCallback onTap;

  const PropertieScreen({
    super.key,
    required this.title,
    required this.squareMeters,
    required this.rooms,
    required this.bathrooms,
    required this.wc,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(description),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('M²: $squareMeters'),
                  Text('Rooms: $rooms'),
                  Text('Showers: $bathrooms'),
                  Text('WC: $wc'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
