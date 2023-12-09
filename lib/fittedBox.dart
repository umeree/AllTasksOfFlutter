import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FIttedBoxWidget extends StatelessWidget {
  const FIttedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.pink[500],
          child: const FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.fill,
            child: Placeholder(),
          ),
        ),
      ),
    );
  }
}
