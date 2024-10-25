import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
