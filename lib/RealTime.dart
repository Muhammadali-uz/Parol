import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() =>
runApp(MaterialApp(
  home: vaqt(),
));
class vaqt extends StatefulWidget {
  const vaqt({super.key});

  @override
  State<vaqt> createState() => _vaqtState();
}

class _vaqtState extends State<vaqt> {
  String vaqt1 = "";
  String vaqt2 = "";
  String vaqt3 = "";
  DateTime hv = DateTime.now();
  void yil() {
    setState(() {
      hv = DateTime.now();
    vaqt1 = DateFormat("yyyy-MM-dd").format(hv);
    vaqt2 = DateFormat("HH:mm").format(hv); 
    vaqt3 = DateFormat("ss").format(hv);
    });
    Future.delayed(Duration(seconds: 1),yil);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    yil();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vaqt1),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(vaqt2),
        CircleAvatar(
          child: Text(vaqt3),
        )
          ],
        ),
      )
    );
  }
}