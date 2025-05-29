import 'package:flutter/material.dart';
import 'task2.dart';

// root of the App
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: const TaskTwo()),
    );
  }
}
