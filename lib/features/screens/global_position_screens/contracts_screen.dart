import 'package:flutter/material.dart';
import 'package:niu/config/sizes.dart';

class ContractScreen extends StatelessWidget {
  final List<String> pdfFiles;

  const ContractScreen({
    super.key,
    required this.pdfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contrats")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pdfFiles.isEmpty
                ? const Center(
                    child: Text(
                      "No files founded",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: pdfFiles.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.picture_as_pdf),
                          title: Text(pdfFiles[index]),
                          onTap: () {},
                        );
                      },
                    ),
                  ),
            normalVerticalSpacing,
            const Text(
              "Manage Data",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.file_upload),
              title: const Text("Import Data"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
