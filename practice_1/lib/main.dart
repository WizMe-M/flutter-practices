import 'package:flutter/material.dart';
import 'package:practice_1/screen_1.dart';
import 'package:practice_1/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice 1',
      home: MeditateScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}