import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Result : 0",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Enter First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("ADD")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("SUBSTRACT")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("MULTIPLY")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("DIVIDE")),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}





















//https://www.figma.com/file/GSwr2D21AQw1C3VnWCSJD0/Mini-Playstore?node-id=0%3A1https://www.figma.com/file/GSwr2D21AQw1C3VnWCSJD0/Mini-Playstore?node-id=0%3A1