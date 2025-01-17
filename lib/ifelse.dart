import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: if_else_dars(),
    ),
  );
}

class if_else_dars extends StatefulWidget {
  const if_else_dars({super.key});

  @override
  State<if_else_dars> createState() => _if_else_darsState();
}

class _if_else_darsState extends State<if_else_dars> {
  int raqam = 0;
  Color rang = Colors.black;
  String text = "";
  Color rang2 = Colors.orange;
  void f() {
    setState(() {
      if (raqam == 1) {
        rang = Colors.red;
        text = "Bu qizil";
        rang2 = Colors.white;
      } else if (raqam == 2) {
        rang = Colors.yellow;
        rang2 = Colors.red;
        text = "Bu sariq";
      } else {
        rang = Colors.blue;
        text = "Bu ko`k";
        rang2 = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rang,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: PageView(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  color: rang,
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: rang2,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        raqam = 1;
                        f();
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                        child: Center(child: Text("Red", style: sty)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        raqam = 2;
                        f();
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                        child: Center(child: Text("Yellow", style: sty)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        raqam = 111;
                        f();
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Center(child: Text("Blue", style: sty)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if_else_dars2(),
          ],
        ),
      ),
    );
  }
}

final sty = TextStyle(color: Colors.white, fontSize: 30);

class if_else_dars2 extends StatefulWidget {
  const if_else_dars2({super.key});

  @override
  State<if_else_dars2> createState() => _if_else_dars2State();
}

class _if_else_dars2State extends State<if_else_dars2> {
  String rasm = "ssd/space.jpg";
  int son = 0;
  void f() {
    setState(() {
      if (
        son == 1
      ){
        rasm = "ssd/tabiat2.jpg";
      }else if(
        son == 2
      ){
        rasm = "ssd/forest.jpg";
      }else if(
        son ==3
      ){
        rasm = "ssd/autum.jpg";
      }else {
        rasm = "ssd/winter.jpg";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 565,
            child: Image.asset(rasm,fit: BoxFit.cover,),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  son = 1;
                  f();
                },
                child: Container(
                  width: 120,
                  height: 100,
                  child: Image.asset("ssd/tabiat2.jpg",fit: BoxFit.cover,),
                ),
              ),
              InkWell(
                onTap: () {
                  son = 2;
                  f();
                },
                child: Container(
                  width: 120,
                  height: 100,
                  child: Image.asset("ssd/forest.jpg",fit: BoxFit.cover,),
                ),
              ),
              InkWell(
                onTap: () {
                  son = 3;
                  f();
                },
                child: Container(
                  width: 120,
                  height: 100,
                  child: Image.asset("ssd/autum.jpg",fit: BoxFit.cover,),
                ),
              ),
              InkWell(
                onTap: () {
                  son = 4;
                  f();
                },
                child: Container(
                  width: 120,
                  height: 100,
                  child: Image.asset("ssd/winter.jpg",fit: BoxFit.cover,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
