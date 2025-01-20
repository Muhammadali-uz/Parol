import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: listqoshish(),
    ));

class listqoshish extends StatefulWidget {
  const listqoshish({super.key});

  @override
  State<listqoshish> createState() => _listqoshishState();
}

class _listqoshishState extends State<listqoshish> {
  List ln = [];
  String h = "";
  String d = "";
  void f1() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                h = value;
              });
            },
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    ln.add(h);
                    Navigator.pop(context);
                  });
                },
                child: Text("OK"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: ln.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(ln[index]),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          ln.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete_forever),
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                  children: [
                                    TextField(
                                      onChanged: (value) {
                                        setState(() {
                                          d = value;
                                        });
                                      },
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              setState(() {
                                                ln[index] = d;
                                                Navigator.pop(context);
                                              });
                                            },
                                            child: Text("ok")),
                                        TextButton(
                                            onPressed: () {
                                              setState(() {
                                                Navigator.pop(context);
                                              });
                                            },
                                            child: Text("Back"))
                                      ],
                                    )
                                  ],
                                ));
                      },
                      icon: Icon(Icons.edit),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          f1();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
