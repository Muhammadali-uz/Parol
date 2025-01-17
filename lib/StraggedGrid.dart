import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(
    MaterialApp(
      home: StaggetGrids(),
    ),
  );
}

class StaggetGrids extends StatefulWidget {
  const StaggetGrids({super.key});

  @override
  State<StaggetGrids> createState() => _StaggetGridsState();
}

class _StaggetGridsState extends State<StaggetGrids> {
  void initState() {
    // TODO: implement initState
    super.initState();
    f();
  }

  void f() {
    setState(() {
      Future.delayed(Duration(seconds: 4)).then((g) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contex) => ikkiGr(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "ssd/space.jpg",
              ),
              fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SpinKitFadingCircle(
            color: Colors.red,
            size: 90,
          ),
        ),
      ),
    );
  }
}

class ikkiGr extends StatefulWidget {
  const ikkiGr({super.key});

  @override
  State<ikkiGr> createState() => _ikkiGrState();
}

class _ikkiGrState extends State<ikkiGr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: StaggeredGrid.count(
        crossAxisCount: 5,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.blue.shade700,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.black,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.pink,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.orange,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.brown,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.teal,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.indigo,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
