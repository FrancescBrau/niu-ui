import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';

class AlertScreen extends StatelessWidget {
  final String title;
  final String content;

  const AlertScreen({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              style: const TextStyle(fontSize: 18),
            ),
            normalVerticalSpacing,
            const Text(
              "Manage Alerts",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add Alert"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete Alert"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
