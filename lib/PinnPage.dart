import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: User_page(),
    ),
  );
}

class User_page extends StatefulWidget {
  const User_page({super.key});

  @override
  State<User_page> createState() => _User_pageState();
}

class _User_pageState extends State<User_page> {
  TextEditingController tf1 = TextEditingController();
  TextEditingController tf2 = TextEditingController();
  String user = "Muhammadali";
  String pass = "123456789";
  bool tick = true;
  void f() {
    setState(() {
      if (tf1.text == user && tf2.text == pass) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => User_page2(), 
          ),
        );
      } else {
        final snac = SnackBar(
          content: Text("Username yoki Passcodeda xatolik bor"),
          duration: Duration(seconds: 5),
        );
        ScaffoldMessenger.of(context).showSnackBar(snac);
      }
    });
  }

  void f1() {
    setState(() {
      tick = !tick;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: tf1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.grey),
                
              ),
        
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: tick,
              controller: tf2,
              decoration: InputDecoration(
                suffix: IconButton(
                    onPressed: () {
                      f1();
                    },
                    icon: Icon(tick ? Icons.lock : Icons.lock_open)),
                border: OutlineInputBorder(),
                labelText: "Passcode",
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {
                  f();
                },
                child: Text("Next"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class User_page2 extends StatefulWidget {
  const User_page2({super.key});

  @override
  State<User_page2> createState() => _User_page2State();
}

class _User_page2State extends State<User_page2> {
  TextEditingController tf3 = TextEditingController();
  String m = "";
  void f2 () {
    int number = int.parse(tf3.text);
    setState(() {
      if(number < 20 ){
        m = "Sizga mumkin emas";
      }else{
        m = "Sizga mumkin";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: tf3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Text(m ,style: TextStyle(color: Colors.red,fontSize: 40,),),
          InkWell(
            onTap: () {
              f2();
            },
            child: Container(
              width: 50,
              height: 30,
              color: Colors.blue,
              child: Center(
                child: Text("OK",style: 
                TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
