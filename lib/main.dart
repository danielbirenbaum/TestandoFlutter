import 'package:flutter/material.dart';
import 'package:projeto2/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Efac Mobile",
      home: HomePage(),
    );
  }
}
