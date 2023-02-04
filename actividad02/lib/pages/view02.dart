import 'package:flutter/material.dart';

class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Container(
          padding: const EdgeInsets.only(
              top: 50, bottom: 40), //apply padding to all four sides
          child: const Text("Hello World, Text 1"),
        ),
        Column(
          children: const [
            Text("Hello World, Text 2"),
            Text("Hello World, Text 3"),
            Text("Hello World, Text 4"),
            Text("Hello World, Text 5"),
          ],
        )
      ])),
    );
  }
}
