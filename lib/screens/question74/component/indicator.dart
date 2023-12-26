import 'package:flutter/material.dart';

Widget getIndicator(bool isActive){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 3),
    height: 10,
    width: 10,
    decoration: BoxDecoration(
      color: isActive? Colors.green : Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}