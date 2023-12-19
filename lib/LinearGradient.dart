import 'package:flutter/material.dart';

class LinearGradientW extends StatefulWidget {
  const LinearGradientW({super.key});

  @override
  State<LinearGradientW> createState() => _LinearGradientWState();
}

class _LinearGradientWState extends State<LinearGradientW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Gradient"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomLeft, stops: [
            0.3,
            0.5,
            0.10
          ], colors: [
            Colors.deepPurpleAccent,
            Colors.pinkAccent,
            Colors.deepOrange
          ])),
        ),
      ),
    );
    ;
  }
}
