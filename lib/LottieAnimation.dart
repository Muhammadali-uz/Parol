import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: lotties(),
  ));
}

class lotties extends StatefulWidget {
  const lotties({super.key});

  @override
  State<lotties> createState() => _lottiesState();
}

class _lottiesState extends State<lotties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          Lottie.asset("lottie/kapalak.json"),
          Lottie.asset("lottie/t.json"),
          Lottie.asset("lottie/t1.json"),
          Lottie.asset("lottie/t2.json"),
          Lottie.asset("lottie/t3.json"),
          Lottie.asset("lottie/t4.json"),
        ],
      ),
    );
  }
}
