import 'package:flutter/material.dart';
class tasbeh extends StatefulWidget {
  const tasbeh({super.key});

  @override
  State<tasbeh> createState() => _tasbehState();
}

class _tasbehState extends State<tasbeh> {
  TextEditingController te = TextEditingController();
  int raqam = 0;
  String txt = "Subhanalloh/سبحانله";
  int sont = 1;
  void fun1() {
    setState(() {
      if (raqam < 143) {
        raqam++;
      } ;
       if (raqam - 33 == 0) {
        txt = "Alhamdulillah/الحمد لله";
      } else if (raqam - 66 == 0) {
        txt = "Allohu akbar/الله أكبر";
      } else if (raqam - 99 == 0) {
        txt = "La Ilaha Illalloh/لا إله اللله";
      } else if (sont == 2 && raqam - 110 == 0) {
        txt = te.text.isNotEmpty ? te.text : txt;
      }
    });
  }

  void fun2() {
    setState(() {
      raqam = 0;
      txt = "Subhanalloh/سبحانله";
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          txt,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("ssd/masjid.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$raqam",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      fun2();
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      fun1();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => Container(
                    child: AlertDialog(
                      backgroundColor: Colors.grey.shade900,
                      title: Text(
                        "Qo`shimcha Tasbehlar Kiriting",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: Container(
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          children: [
                            Text(
                              "Diqqat: Kiritilgan tasbehlar 110(bir yuzi o`n)dan keyin ko`rinadi",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextField(
                              controller: te,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            sont = 2;
                            Navigator.pop(context);
                          },
                          child: Text("OK"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cencel"),
                        ),
                      ],
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}