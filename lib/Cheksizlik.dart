import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: ifcolor(),
    ),
  );
}
class ifcolor extends StatefulWidget {
  const ifcolor({super.key});
  @override
  State<ifcolor> createState() => _ifcolorState();
}
class _ifcolorState extends State<ifcolor> {
  int? nt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(1),
          child: InkWell(
            onTap: () {
              setState(() {
                nt = index;
              });
            },
            child: Container(
              height: 100,
              color: nt == index ? Colors.red : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}