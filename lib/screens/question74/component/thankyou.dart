import 'package:flutter/material.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({Key? key}) : super(key: key);

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
          child: Image.asset("assets/images/thankyou.jpg",
            height: 350,
            width: 350,
          ),

        ),
      ],

    );
  }
}
