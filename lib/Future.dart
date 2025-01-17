
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Future1(),
    ),
  );
}

class Future1 extends StatefulWidget {
  const Future1({super.key});

  @override
  State<Future1> createState() => _Future1State();
}

class _Future1State extends State<Future1> {
  String m = "";
  void orqaga() async {
    for (int r = 10; r >= 0; r--) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        m = "$r";
        if(r == 0){
          m = "BOOM!!";
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    orqaga();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(m),
      ),
    );
  }
}
