import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuranHomePage(),
    );
  }
}

class QuranHomePage extends StatefulWidget {
  @override
  _QuranHomePageState createState() => _QuranHomePageState();
}

class _QuranHomePageState extends State<QuranHomePage> {
  List surahs = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchQuranData();
  }

  Future<void> fetchQuranData() async {
    const apiUrl = 'https://api.alquran.cloud/v1/quran/quran-simple';

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        surahs = data['data']['surahs'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran'),
        backgroundColor: Colors.green,
      ),
      body: isLoading
          ? const SizedBox.shrink()
          : ListView.builder(
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                final surah = surahs[index];
                return ListTile(
                  title: Text('${surah['number']}. ${surah['englishName']}'),
                  subtitle: Text(surah['name']),
                );
              },
            ),
    );
  }
}
