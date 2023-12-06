import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              return Text(
                "Hello",
                style: TextStyle(fontSize: 50),
              );
            } else {
              return Text(
                "${constraints.maxWidth}",
                style: TextStyle(fontSize: 40),
              );
            }
          }),
        ),
      ),
    );
  }
}
