import 'package:flutter/material.dart';

void main() {
  runApp(
    mashq(),
  );
}

class mashq extends StatefulWidget {
  const mashq({super.key});

  @override
  State<mashq> createState() => _mashqState();
}

class _mashqState extends State<mashq> {
  bool o = false;
  String rasm = "ssd/snow.gif";
  void f() {
    
    setState(() {
      
      if (o == true){
        rasm = "ssd/rain.gif";
      } else{
        rasm = "ssd/snow.gif";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Switch(value: o, onChanged: (l){
              
              o = l;
              f();
            })
          ],
        ),
        body: Center(
          child: Image.asset(rasm),
        ),
      ),
    );
  }
}
