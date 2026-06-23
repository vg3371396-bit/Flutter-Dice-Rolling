import 'package:flutter/material.dart';

class Animcontainer extends StatefulWidget {
  @override
  _Animcontainer createState() => _Animcontainer();
}

class _Animcontainer extends State<Animcontainer> {
  double width = 100;
  double height = 100;
  Color color = Colors.blue;

  void changeBox() {
    setState(() {
      width = width == 100 ? 200 : 100;
      height = height == 100 ? 150 : 100;
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Box")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          width: width,
          height: height,
          color: color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBox,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}