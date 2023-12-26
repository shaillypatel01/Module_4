import 'dart:async';

import 'package:flutter/material.dart';

class question73 extends StatefulWidget {
  const question73({Key? key}) : super(key: key);

  @override
  State<question73> createState() => _question73State();
}

class _question73State extends State<question73> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF4BB696),
                  Color(0xFF4BB696),
                  Color(0xFF9EF3D5),

                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
            ),
          ),
        ),
        Center(
          child: Image.asset("assets/images/app_logo.png",
            height: 150,
            width: 150,
          ),

        ),
      ],

    );
  }
}
