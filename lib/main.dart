import 'package:flutter/material.dart';
import 'package:mehedi_design/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mehedi Design",
      home: HomeScreen(),
    );
  }
}
