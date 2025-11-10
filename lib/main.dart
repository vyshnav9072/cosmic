import 'package:cosmic_ios/favourite.dart';
import 'package:cosmic_ios/home_screen.dart';
import 'package:cosmic_ios/inner.dart';
import 'package:cosmic_ios/login.dart';
import 'package:cosmic_ios/profile.dart';
import 'package:cosmic_ios/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Profile()),
    );
  }
}
