import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MaterialApp(
      home: API(),
    ));

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {

TextEditingController c1 = TextEditingController();
  String region = "";
  String bomdod = "";
  String peshin = "";
  String asr = "";
  String shom = "";
  String hufton = "";
  String haftakuni = "";
  String sana = "";
  String oy = "";
  String kun = "";

  void islom_vaqtlari() async {
    
    String api = "https://islomapi.uz/api/present/day?region=Qo%27qon";
    Response qabul = await get(Uri.parse(api));
    Map islom_vaqtlari = jsonDecode(qabul.body);
    setState(() {
      region = islom_vaqtlari["region"];
      bomdod = islom_vaqtlari["times"]["tong_saharlik"];
      peshin = islom_vaqtlari["times"]["peshin"];
      asr = islom_vaqtlari["times"]["asr"];
      shom = islom_vaqtlari["times"]["shom_iftor"];
      hufton = islom_vaqtlari["times"]["shom_iftor"];
      haftakuni = islom_vaqtlari["weekday"];
      sana = islom_vaqtlari["date"].toString();
      oy = islom_vaqtlari["hijri_date"]["month"].toString();
      kun = islom_vaqtlari["hijri_date"]["day"].toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    islom_vaqtlari();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:Text(region),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            Text(haftakuni, style: texts),
            Text(sana, style: texts),
            Text(oy, style: texts),
            Text(kun, style: texts),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 20, 8, 200),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Bomdod: $bomdod", style: texts),
              Text("Peshin: $peshin", style: texts),
              Text("Asr: $asr", style: texts),
              Text("Shom: $shom", style: texts),
              Text("Hufton: $hufton", style: texts),
            ],
          ),
        ),
      ),
    );
  }
}

final texts = TextStyle(color: Colors.white, fontSize: 25);
