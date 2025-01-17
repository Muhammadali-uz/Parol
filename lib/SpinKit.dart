import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(
    MaterialApp(
      home: Spinkits(),
    ),
  );
}

class Spinkits extends StatefulWidget {
  const Spinkits({super.key});

  @override
  State<Spinkits> createState() => _SpinkitsState();
}

class _SpinkitsState extends State<Spinkits> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    f();
  }

  void f() {
    setState(() {
      Future.delayed(Duration(seconds: 5)).then((g) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contex) => m(),
            ));
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: SpinKitHourGlass(color: Colors.white),
      ),
    );
  }
}

class m extends StatefulWidget {
  const m({super.key});

  @override
  State<m> createState() => _mState();
}

class _mState extends State<m> {
  void initState() {
    // TODO: implement initState
    super.initState();
    f();
  }

  void f() {
    setState(() {
      Future.delayed(Duration(seconds: 5)).then((g) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contex) => Spinkits(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: SpinKitFoldingCube(color: Colors.white),
      ),
    );
  }
}
