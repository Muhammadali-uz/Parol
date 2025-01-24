// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// void main() => runApp(MaterialApp(
//       home: APII(),
//     ));

// class APII extends StatefulWidget {
//   const APII({super.key});

//   @override
//   State<APII> createState() => _APIIState();
// }

// class _APIIState extends State<APII> {
//   //Bo`sh Stringlar <...
//   String time = "";
//   String namoz = "";
//   String date = "";
//   String oy = "";
//   //Bo`sh Stringlar ...>
//   //https funksiyasi <...
//   void v() async {
//     String api =
//         "https://api.aladhan.com/v1/timingsByAddress/present?address=kokand";
//     Response qabul = await get(Uri.parse(api));
//     Map f = jsonDecode(qabul.body);
//     setState(() {
//       time = f["data"]["meta"]["timezone"];
//       namoz = f["data"]["timings"]["Fajr"];
//       date = f["data"]["date"]["hijri"]["date"];
//       oy = f["data"]["date"]["hijri"]["month"]["en"];
//     });
//   }

// //https funksiyasi ...>
// //initState <...
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     v();
//   }
//   //initState ...>

//   @override
//   Widget build(BuildContext context) {
//     //Scaffold <...
//     return Scaffold(
//       //AppBar <...
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(time),
//       ),
//       //AppBar ...>
//       //Body <...
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             //TextField <...
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder()
//               ),
//             ),
//             //TextField ...>
//             //Textlar <...
//             Text(namoz,style: texts,),
//             Text(date,style: texts,),
//             Text(oy,style: texts,),
//             //Textlar ...>
//           ],
//         ),
//       ),
//       //Body ...>
//     );
//     //Scaffold ...>
//   }
// }
// //Final:
// final texts = TextStyle(fontSize: 20);