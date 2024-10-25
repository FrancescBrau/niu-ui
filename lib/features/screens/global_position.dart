import 'package:flutter/material.dart';
import 'package:niu/config/colors.dart';
import 'package:niu/config/sizes.dart';
import 'package:niu/features/screens/global_position_screens/account_screen.dart';
import 'package:niu/features/screens/global_position_screens/alerts_screen.dart';
import 'package:niu/features/screens/global_position_screens/contracts_screen.dart';
import 'package:niu/features/screens/global_position_screens/mailbox_screen.dart';
import 'package:niu/features/screens/global_position_screens/tenats_screen.dart';
import 'package:niu/features/widgets/custom_card.dart';
import 'package:niu/features/screens/global_position_screens/propertie_screen.dart';

class GlobalPositionScreen extends StatelessWidget {
  const GlobalPositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: creme,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '  Global Position',
            style: TextStyle(
                fontFamily: 'LibreBaskerville', fontSize: normalTextSize),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CustomCard(
            title: 'Properties',
            description: 'Here you can find your appartments',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PropertieScreen(
                      title: 'Properties', content: 'Here is more information'),
                ),
              );
            },
            imagePath: 'assets/images/vivendes.png',
          ),
          CustomCard(
            title: 'Alerts',
            description: 'Here you can manage your daily life as owner',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertScreen(
                      title: 'Alerts',
                      content:
                          'Here is more information about alerts and programmed issues'),
                ),
              );
            },
            imagePath: 'assets/images/alerta.avif',
          ),
          CustomCard(
            title: 'Accounting',
            description: 'Here you can manage your creditors and debtors ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountScreen(),
                ),
              );
            },
            imagePath: 'assets/images/contabilitat.jpg',
          ),
          CustomCard(
            title: 'Contracts',
            description: 'Sign contracts and find all documents here',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContractScreen(
                    pdfFiles: [],
                  ),
                ),
              );
            },
            imagePath: 'assets/images/contractes.jpeg',
          ),
          CustomCard(
            title: 'Tenants',
            description: 'Add tenants to system and manage daily issues',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TenantScreen(
                      title: 'Tenants', content: 'Here are tenants and data'),
                ),
              );
            },
            imagePath: 'assets/images/tenants.webp',
          ),
          CustomCard(
            title: 'Mailbox',
            description: 'here you can chat with other contracting parties',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MailboxScreen(
                    conversations: [],
                    tenants: [],
                  ),
                ),
              );
            },
            imagePath: 'assets/images/misatge.webp',
          )
        ],
      ),
      backgroundColor: marro,
    );
  }
}
