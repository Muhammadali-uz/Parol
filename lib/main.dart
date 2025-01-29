import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() =>
runApp(MaterialApp(
  home: uch_dars(),
));
class uch_dars extends StatefulWidget {
  const uch_dars({super.key});

  @override
  State<uch_dars> createState() => _uch_darsState();
}

class _uch_darsState extends State<uch_dars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          launchUrl(Uri.parse("https://bato.uz/"));
        }, child: Text("Bato")),
      ),
    );
  }
}