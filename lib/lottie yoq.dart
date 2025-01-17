import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: llt(),
  ));
}

class llt extends StatefulWidget {
  const llt({super.key});

  @override
  State<llt> createState() => _lltState();
}

class _lltState extends State<llt> {
  final GlobalKey<ScaffoldState> nom = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: nom,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            nom.currentState?.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("ssd/yol.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer orci est, luctus a pharetra sit amet, elementum tincidunt enim.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => lci(),
                  ),
                );
              },
              child: Text(
                "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class lci extends StatefulWidget {
  const lci({super.key});

  @override
  State<lci> createState() => _lciState();
}

class _lciState extends State<lci> {
  List nomlist = [
    // "Doll",
    // "Doll 2",
    // "Train",
    // "Plane",
    // "Ball",
    // "Globe",
    // "Robot",
    // "Chess",
    // "Doll House",
    oddiy(
      text: "Toy Car",
      rasm: "ssd/toy car.jpg",
      malumotlar:
          "A model car, or toy car, is a miniature representation of an automobile. Other miniature motor vehicles, such as trucks, buses, or even ATVs, etc.",
    ),
    oddiy(
        text: "Doll",
        rasm: "ssd/anabelle.jpg",
        malumotlar:
            "Annabelle is an allegedly-haunted Raggedy Ann doll, housed in the now closed occult museum of the paranormal investigators Ed and Lorraine Warren."),
    oddiy(
      text: "Doll 2",
      rasm: "ssd/doll.jpg",
      malumotlar:
          "Originally the pile of plush consisted of mohair or worsted yarn, but now silk by itself or with a cotton backing is used for plush.",
    ),
    oddiy(
      text: "Train",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Plane",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Ball",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Globe",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Robot",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Chess",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A toy train is a toy that represents a train. It is distinguished from a model train by an emphasis on low cost and durability, rather than scale modeling.",
    ),
    oddiy(
      text: "Doll House",
      rasm: "ssd/train.jpg",
      malumotlar:
          "A dollhouse or doll's house is a toy house made in miniature. Since the early 20th century dollhouses have primarily been the domain of children.",
    ),
  ];
  Widget tem(data) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => malumot(
                  s: data,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          height: 100,
          child: Center(
              child: Text(
            data.text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            child: Image(
              image: AssetImage("ssd/wow.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    itemCount: nomlist.length,
                    itemBuilder: (context, index) => tem(
                      nomlist[index],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class oddiy {
  String? text;
  String? rasm;
  String? malumotlar;
  oddiy({
    this.malumotlar,
    this.rasm,
    this.text,
  });
}

class malumot extends StatefulWidget {
  final oddiy s;
  const malumot({super.key, required this.s});

  @override
  State<malumot> createState() => _malumotState();
}

class _malumotState extends State<malumot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text(
          widget.s.text!,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(
                colors: [
                  Colors.blue,
                  Colors.red,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.s.rasm!),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.s.rasm!),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              widget.s.malumotlar!,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
