import 'package:assignment_module4/screens/question67/profile.dart';
import 'package:flutter/material.dart';

import '../../main.dart';




class question67 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                // Handle profile option
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyProfilePage()));
                print('Profile option selected');
              } else if (value == 'logout') {
                // Handle logout option
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyApp()));
                print('Logout option selected');
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'profile',
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'logout',
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to your Home Page!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}