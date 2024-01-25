import 'package:flutter/material.dart';
import 'package:homework_4/pin_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework-4',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFFFFFbFF),
      ),
      home: const pin_login(),
    );
  }
}
