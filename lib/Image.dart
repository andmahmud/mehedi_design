import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Image")),

        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
    );
  }
}
