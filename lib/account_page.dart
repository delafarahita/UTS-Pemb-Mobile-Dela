import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AccountPage(),
  ));
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent, 
      elevation: 0, 
      toolbarHeight: 10, 
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileCard(),
              SizedBox(height: 16),
              _buildCard([
                _buildAccountOption(context, 'Account Type', 'FULL SERVICE'),
                _buildAccountOption(context, 'Account Settings', null),
                _buildAccountOption(context, 'LinkAja Syariah', 'Not Active'),
                _buildAccountOption(context, 'Payment Method', null),
              ]),
              _buildCard([
                _buildAccountOption(context, 'Email', 'zainfarahitadela@gmail.com'),
                _buildAccountOption(context, 'Security Question', 'Set'),
                _buildAccountOption(context, 'PIN Settings', null),
                _buildAccountOption(context, 'Language', 'English'),
              ]),
              _buildCard([
                _buildAccountOption(context, 'Terms of Service', null),
                _buildAccountOption(context, 'Privacy Policy', null),
                _buildAccountOption(context, 'Help Center', null),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return const Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dela Farahita Zain',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '+6281234567890',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/2241720058.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(List<Widget> children) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context, String title, String? subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0),
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (subtitle != null) Text(subtitle, style: TextStyle(color: Colors.grey)),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.redAccent,),
        ],
      ),
    );
  }
}
