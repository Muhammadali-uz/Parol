import 'package:flutter/material.dart';
import 'LottieAnimation.dart';

void main() => runApp(MaterialApp(
      home: Fikr(),
    ));

class Fikr extends StatefulWidget {
  const Fikr({super.key});

  @override
  State<Fikr> createState() => _FikrState();
}

class _FikrState extends State<Fikr> {
  TextEditingController i1 = TextEditingController();
  TextEditingController i2 = TextEditingController();
  TextEditingController i3 = TextEditingController();
  TextEditingController i4 = TextEditingController();
  String text1 = "";
  String text2 = "";
  String text3 = "";
  String text4 = "";

  void f1() {
    setState(() {
      if (i1.text.isEmpty) {
        text1 = "Parol kiriting!";
        text2 =
            "Parol bo`sh bo`lishi mumkin emas. Parol 8ta raqam yoki harflardan tashkil topadi";
      } else if (i1.text.length < 8) {
        text2 = "Parol juda qisqa";
      } else if (i1.text != i2.text) {
        text1 = "Parol Noto`g`ri";
      } else if (i3.text.isEmpty) {
        text3 = "Ism bo`sh bo`lishi mumkin emas!";
      } else if (i4.text.isEmpty) {
        text4 = "Email bo`sh bo`lishi mumkin emas";
      } else {
        text1 = "Parol To`g`ri";
        text2 = "To`g`ri";
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => lotties()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Sign in",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 200, 8, 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TextFields and other UI elements
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: i3,
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  helperText: text3,
                  helperStyle: rang,
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: i4,
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  helperText: text4,
                  helperStyle: rang,
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: "Example@gmail.com",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: rang,
                obscureText: true,
                controller: i1,
                decoration: InputDecoration(
                  helperText: text2,
                  helperStyle: rang,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: rang,
                obscureText: true,
                controller: i2,
                decoration: InputDecoration(
                  helperText: text1,
                  helperStyle: rang,
                  hintText: "Parolni Tasdiqlang",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          f1();
        },
        child: Text("Tasdiqlash"),
      ),
    );
  }
}

final rang = TextStyle(color: Colors.white);
