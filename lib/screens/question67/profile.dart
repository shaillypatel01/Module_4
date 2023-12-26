import 'package:flutter/material.dart';


class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [

                  CircleAvatar(
                    radius: 80,
                    //  backgroundColor: Colors.purple,
                    backgroundImage:
                    AssetImage("assets/images/cat.jpg"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Ring Road'),
                    subtitle: Text('District Surat'),
                  ),
                  const SizedBox(height: 8),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('9876543210'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('topstechnology@gmail.com'),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}