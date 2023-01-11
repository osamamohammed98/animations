import 'package:animations/screens/sandbox.dart';
import 'package:flutter/material.dart';
import 'package:animations/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ninja Trips',
      home: Home(),
    );
  }
}
