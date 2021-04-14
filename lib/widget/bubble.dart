import 'package:flutter/material.dart';

Widget bubble(double screenWH, Color color) {
  return Container(
    width: screenWH,
    height: screenWH,
    foregroundDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: -3,
            blurRadius: 10,
            offset: Offset(0, 0))
      ],
      color: color,
    ),
  );
}
