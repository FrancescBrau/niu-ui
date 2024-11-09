import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';

class MailboxScreen extends StatefulWidget {
  final List<Conversation> conversations;
  final List<Tenant> tenants;

  const MailboxScreen(
      {super.key, required this.conversations, required this.tenants});

  @override
  _MailboxScreenState createState() => _MailboxScreenState();
}

class _MailboxScreenState extends State<MailboxScreen> {
  void _showMessagePopup() {
    showDialog(
      context: context,
      builder: (context) {
        String selectedTenantId = widget.tenants.first.id;
        TextEditingController messageController = TextEditingController();

        return AlertDialog(
          title: const Text("Send Message"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField(
                value: selectedTenantId,
                items: widget.tenants.map((tenant) {
                  return DropdownMenuItem(
                    value: tenant.id,
                    child: Text(tenant.name),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedTenantId = value!;
                  });
                },
                decoration: const InputDecoration(labelText: "Select Tenant"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: messageController,
                decoration: const InputDecoration(labelText: "Message"),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Send"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mailbox")),
      body: ListView.builder(
        itemCount: widget.conversations.length,
        itemBuilder: (context, index) {
          final conversation = widget.conversations[index];
          return ListTile(
            title: Text(conversation.tenantName),
            subtitle: Text(conversation.lastMessage),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showMessagePopup,
        backgroundColor: lightgrey1,
        icon: const Icon(Icons.message, color: brown1),
        label: const Text(
          'Send a Message',
          style: TextStyle(color: brown1),
        ),
      ),
    );
  }
}

class Conversation {
  final String tenantName;
  final String lastMessage;

  Conversation({required this.tenantName, required this.lastMessage});
}

class Tenant {
  final String id;
  final String name;

  Tenant({required this.id, required this.name});
}
