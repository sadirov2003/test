import 'package:flutter/material.dart';
import 'package:flutter_vpn_test_app/src/onBoarding/pages/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const OnBoardingScreen(),
    );
  }
}
