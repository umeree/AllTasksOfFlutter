import 'dart:math';

import 'package:flutter/material.dart';

class GestureDetectorW extends StatefulWidget {
  const GestureDetectorW({super.key});

  @override
  State<GestureDetectorW> createState() => _GestureDetectorWState();
}

class _GestureDetectorWState extends State<GestureDetectorW> {
  Offset dragGesturePosition = Offset.zero;
  double left = 0.0;
  double top = 0.0;
  double right = 0.0;
  double bottom = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
              onPanUpdate: (DragUpdateDetails details) => setState(
                () {
                  dragGesturePosition = details.localPosition;
                },
              ),
              child: const FlutterLogo(size: 200),
            ),
            Positioned(
                left: dragGesturePosition.dx,
                top: dragGesturePosition.dy,
                child: RawMagnifier(
                  decoration: MagnifierDecoration(
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.pink, width: 3),
                    ),
                  ),
                  magnificationScale: 2,
                  size: Size(100, 100),
                )),
          ],
        ),
      ),
    );
    ;
  }
}
