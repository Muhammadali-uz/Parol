




import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: search(),
  ));
}

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  //List #1
  List l1 = [
    oddiy(
      ism: "Salim",
      yoshi: "20",
      manzil: "Qo`qon",
    ),
    oddiy(
      ism: "Oybek",
      yoshi: "37",
      manzil: "Toshkent",
    ),
    oddiy(
      ism: "Abror",
      yoshi: "23",
      manzil: "Namangan",
    ),
    oddiy(
      ism: "Davron",
      yoshi: "12",
      manzil: "Navoiy",
    ),
    oddiy(
      ism: "Hasan",
      yoshi: "19",
      manzil: "Andijon",
    ),
    oddiy(
      ism: "Husan",
      yoshi: "19",
      manzil: "Andijon",
    ),
    oddiy(
      ism: "Ismoil",
      yoshi: "14",
      manzil: "Qo`qon",
    ),
    oddiy(
      ism: "Ikrom",
      yoshi: "27",
      manzil: "Termiz",
    ),
    oddiy(
      ism: "Toxir",
      yoshi: "30",
      manzil: "Buxoro",
    ),
    oddiy(
      ism: "Sanjar",
      yoshi: "32",
      manzil: "Namangan",
    ),
  ];
  //List #2
  List l2 = [];
  //initState
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l2 = l1;
  }

  //funksiya
  void s(qayt) {
    setState(() {
      if (qayt.isEmpty) {
        l2 = l1;
      } else {
        l2 = l1
            .where((e) => e.ism.toLowerCase().startsWith(qayt.toLowerCase()))
            .toList();
      }
    });
  }

  //template
  Widget tem(data) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 104,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ism:${data.ism}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "Yoshi:${data.yoshi}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "Manzili:${data.manzil}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Search TextFieldi
          TextField(
            onChanged: (qayt) {s(qayt);},
          ),
          //ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: l2.length,
              itemBuilder: (context, index) => tem(l2[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class oddiy {
  String? ism;
  String? manzil;
  String? yoshi;
  oddiy({
    this.ism,
    this.manzil,
    this.yoshi,
  });
}
