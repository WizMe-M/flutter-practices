import 'package:flutter/material.dart';
import 'package:practice_1/welcome_screen.dart';
import 'package:practice_1/meditate_screen.dart';
import 'package:practice_1/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice 1',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}