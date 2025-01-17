import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: Quiltedgridtiles(),
    ),
  );
}

class Quiltedgridtiles extends StatefulWidget {
  const Quiltedgridtiles({super.key});

  @override
  State<Quiltedgridtiles> createState() => _QuiltedgridtilesState();
}

class _QuiltedgridtilesState extends State<Quiltedgridtiles> {
  List l = [
    c(index: "0", yosh: "14", ism: "G`ani"),
    c(index: "1", yosh: "15", ism: "Salim"),
    c(index: "2", yosh: "20", ism: "Mansur"),
    c(index: "3", yosh: "17", ism: "Olim"),
    c(index: "4", yosh: "16", ism: "Islom"),
    c(index: "5", yosh: "19", ism: "Davron"),
    c(index: "6", yosh: "21", ism: "Usmon"),
    c(index: "7", yosh: "13", ism: "Ahad"),
    c(index: "8", yosh: "18", ism: "Ikrom"),
    c(index: "9", yosh: "22", ism: "Hamid"),
  ];
  Widget tem(q) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(q.ism, style: oq),
                Text(q.yosh, style: oq),
              ],
            ),
            Text(q.index, style: oq),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            crossAxisCount: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(1, 4),
              QuiltedGridTile(1, 2),
              QuiltedGridTile(1, 2),
              QuiltedGridTile(2, 1),
              QuiltedGridTile(2, 3),
            ]),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: l.length,
          (context, i) => tem(
            l[i],
          ),
        ),
      ),
    );
  }
}

class c {
  String? index;
  String? ism;
  String? yosh;
  c({this.index, this.ism, this.yosh});
}

final oq = TextStyle(color: Colors.white);
