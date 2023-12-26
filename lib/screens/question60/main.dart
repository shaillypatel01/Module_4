

import 'package:assignment_module4/screens/question60/design1.dart';
import 'package:assignment_module4/screens/question60/design2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class question60 extends StatelessWidget {
  const question60({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Design"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screens1(),));
            }, child: Text("Screens1")),
            SizedBox(
              height: 10,
            ),*/
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Design1(),
                      ));
                },
                child: Text("Design 1")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Design2(),
                      ));
                },
                child: Text("Design 2")),
          ],
        ),
      ),
    );
  }
}