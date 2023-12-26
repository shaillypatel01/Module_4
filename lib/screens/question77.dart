import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:url_launcher/url_launcher.dart';



class question77 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Phone Call & SMS Example',
        home: home()
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Phone Call'),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                height: 50,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.deepPurple,
                onPressed: () async {
                  String telephoneNumber = '+2347012345678';
                  String telephoneUrl = "tel:$telephoneNumber"; //set the number here
                  bool? res = await FlutterPhoneDirectCaller.callNumber(telephoneNumber);
                },
                child: Text("Call"),
              ),
              MaterialButton(onPressed: () async {
                makingmesegeTouser(context,"789456130");
              },
                height: 50,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.yellow,
                child: Text("Mesege"),)
            ],
          )
      ),
    );
  }

  void makingmesegeTouser(BuildContext context, phoneNo) async {
    var url = Uri.parse("sms:+$phoneNo");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}