import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Account'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profil.jpg'),
                radius: 30,
              ),
            ),
            title: Text('Abima Fadricho Syuhadak'),
            subtitle: Text('+6281357706168'),
          ),
          Divider(),
          ListTile(
            title: Text('Account Type'),
            subtitle: Text('Full Service'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Account Settings'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('LinkAja Syariah'),
            subtitle: Text('Not Active'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Payment Method'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Email'),
            subtitle: Text('abimafadricho.29@gmail.com'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Security Question'),
            subtitle: Text('Set'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('PIN Settings'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('English'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Help Center'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
