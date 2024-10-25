import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';

class PropertieScreen extends StatelessWidget {
  final String title;
  final String content;

  const PropertieScreen({
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
              "Manage Properties",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add Property"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete Property"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
