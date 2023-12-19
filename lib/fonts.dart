import 'package:flutter/material.dart';

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  Widget myfonts() {
    return const Text(
      "My font",
      style: TextStyle(fontFamily: "Schyler"),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textScaleFactor = MediaQuery.of(context).textScaler;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Fonts",
            textScaler: textScaleFactor,
            style: TextStyle(fontFamily: "Schyler"),
          ),
        ),
        body: Center(
          child: myfonts(),
        ));
  }
}
