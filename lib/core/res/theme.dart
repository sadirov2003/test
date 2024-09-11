import 'package:flutter/material.dart';

ThemeData theme() {

  return ThemeData(

    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'SF-Pro-Display',
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      
    ),
  );
}
