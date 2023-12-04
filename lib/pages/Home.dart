import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
            width: screenWidth / 2,
            height: screenHeight / 4,
            color: Colors.deepPurple[200],
            child: Center(
                child: Text(
                    "Width of Home is ${screenWidth / 2} and Height is ${screenHeight / 4} and total Height is $screenHeight"))),
      ),
    );
  }
}
