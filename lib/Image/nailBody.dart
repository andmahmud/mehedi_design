import 'package:flutter/material.dart';

class NailBody extends StatelessWidget {
  const NailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Nail Art",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
