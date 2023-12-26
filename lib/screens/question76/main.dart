import 'package:assignment_module4/screens/question76/body.dart';
import 'package:flutter/material.dart';
class question76 extends StatelessWidget {
  const question76({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.black)
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30),

                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF76BA99)),
                  foregroundColor: MaterialStateProperty.all(Colors.black)
              )
          )
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(

          body: Body()
      ),
    );
  }
}
