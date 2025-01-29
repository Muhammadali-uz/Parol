import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: APIqiyin(),
    ));

class APIqiyin extends StatefulWidget {
  const APIqiyin({super.key});

  @override
  State<APIqiyin> createState() => _APIqiyinState();
}

class _APIqiyinState extends State<APIqiyin> {
  List dta = [];
  void funk() async {
    final response = await http.get(
        Uri.parse("https://dash.vips.uz/api/20/231/6222"));
    if (response.statusCode == 200) {
      final List jsonnom = json.decode(response.body);
      for (var item in jsonnom) {
        dta.add(Map.from(item));
      }
      setState(() {});
    } else {
      throw Exception("Xato");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    funk();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dta.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.deepPurple,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dta[index]["mahsulotnomi"],
                        style: oq,
                      ),
                      Text(
                        dta[index]["narxi"].toString(),
                        style: oq,
                      ),
                      Text(
                        dta[index]["exdate"].toString(),
                        style: oq,
                      ),
                      Text(
                        dta[index]["info"],
                        style: oq,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(dta[index]["mahsulotrasmi"]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final oq = TextStyle(
  color: Colors.white,
  fontSize: 15,
);
