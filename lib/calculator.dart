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

  double result = 0, angkaPertama = 0, angkaKedua = 0;

  add() {
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama + angkaKedua;
    });
  }

  substract() {
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama - angkaKedua;
    });
  }

  multiply() {
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama * angkaKedua;
    });
  }

  divide() {
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama / angkaKedua;
    });
  }

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
              "Result : $result",
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
                    ElevatedButton(
                        onPressed: () {
                          add();
                          controller1.clear();
                          controller2.clear();
                        },
                        child: Text("ADD")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          substract();
                          controller1.clear();
                          controller2.clear();
                        },
                        child: Text("SUBSTRACT")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          multiply();
                          controller1.clear();
                          controller2.clear();
                        },
                        child: Text("MULTIPLY")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          divide();
                          controller1.clear();
                          controller2.clear();
                        },
                        child: Text("DIVIDE")),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
