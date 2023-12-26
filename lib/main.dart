import 'package:assignment_module4/screens/question60/main.dart';
import 'package:assignment_module4/screens/question61/main.dart';
import 'package:assignment_module4/screens/question62.dart';
import 'package:assignment_module4/screens/question63.dart';
import 'package:assignment_module4/screens/question64.dart';
import 'package:assignment_module4/screens/question65.dart';
import 'package:assignment_module4/screens/question66.dart';
import 'package:assignment_module4/screens/question67/main.dart';
import 'package:assignment_module4/screens/question68.dart';
import 'package:assignment_module4/screens/question69.dart';
import 'package:assignment_module4/screens/question70.dart';
import 'package:assignment_module4/screens/question71.dart';
import 'package:assignment_module4/screens/question72.dart';
import 'package:assignment_module4/screens/question73.dart';
import 'package:assignment_module4/screens/question74/main.dart';
import 'package:assignment_module4/screens/question75.dart';
import 'package:assignment_module4/screens/question76/main.dart';
import 'package:assignment_module4/screens/question77.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "ListView.builder",
        theme:  ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              backgroundColor: MaterialStateProperty.all(Color(0xFFF4ABC4)),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
          ),
        ),

        debugShowCheckedModeBanner: false,

        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home:  Module4());
  }
}

class Module4 extends StatefulWidget {
  const Module4({Key? key}) : super(key: key);

  @override
  State<Module4> createState() => _Module4State();
}

class _Module4State extends State<Module4> {

  List<Widget> screens=[
    question60(),
    question61(),
    question62(),
    question63(),
    question64(),
    question65(),
    questiion66(),
    question67(),
    question68(),
    question69(),
    question70(),
    question71(),
    question72(),
    question73(),
    question74(),
    question75(),
    question76(),
    question77(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: screens.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screens[index]),
                  );
                },
                title: Text("${screens[index]}"),
              );
            }
        ),
      ),
    );
  }
}

