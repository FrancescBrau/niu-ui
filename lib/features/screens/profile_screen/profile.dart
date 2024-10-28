import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _logout(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 4,
        backgroundColor: creme,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Profile',
            style: TextStyle(
                fontFamily: 'LibreBaskerville', fontSize: normalTextSize),
          ),
        ),
        iconTheme: const IconThemeData(
          color: noir,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (String result) {
              if (result == 'logout') {
                _logout(context);
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'logout',
                child: Text('Log out'),
              ),
            ],
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/appbar.png'),
              ),
            ),
            normalVerticalSpacing,
            Center(
              child: Text(
                'User name',
                style: TextStyle(
                    fontSize: bigTextSize, fontWeight: FontWeight.bold),
              ),
            ),
            normalVerticalSpacing,
            Center(
              child: Text(
                'email@email.com',
                style: TextStyle(fontSize: normalTextSize, color: Colors.grey),
              ),
            ),
            normalVerticalSpacing,
            Text(
              'Contact Info',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            normalVerticalSpacing,
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefon: +123 456 789'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Street, 1'),
            ),
          ],
        ),
      ),
      backgroundColor: pedraBlanca,
    );
  }
}
