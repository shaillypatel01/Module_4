
import 'package:assignment_module4/screens/question61/design1.dart';
import 'package:assignment_module4/screens/question61/design2.dart';
import 'package:assignment_module4/screens/question61/design3.dart';
import 'package:flutter/material.dart';


class question61 extends StatelessWidget {
  const question61({super.key});

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
                        builder: (context) => Design_61_1(),
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
                        builder: (context) => Design_61_2(),
                      ));
                },
                child: Text("Design 2")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Design_61_3(),
                      ));
                },
                child: Text("Design 3")),
          ],
        ),
      ),
    );
  }
}