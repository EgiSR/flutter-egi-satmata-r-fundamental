import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blue,
      ),
    ));
  }
}
//https://www.figma.com/file/GSwr2D21AQw1C3VnWCSJD0/Mini-Playstore?node-id=0%3A1https://www.figma.com/file/GSwr2D21AQw1C3VnWCSJD0/Mini-Playstore?node-id=0%3A1