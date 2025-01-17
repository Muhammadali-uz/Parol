import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: for_dars(),
    ),
  );
}

class for_dars extends StatefulWidget {
  const for_dars({super.key});

  @override
  State<for_dars> createState() => _for_darsState();
}

class _for_darsState extends State<for_dars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 1; i <= 1000; i++)
            Center(
              child: Text(
                "X" * i,
              ),
            ),
        ],
      ),
    );
  }
}