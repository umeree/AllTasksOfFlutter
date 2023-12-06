import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitch = false;
  var text = "Switch is OFF";

  void switchandler(bool value) {
    if (isSwitch == false) {
      setState(() {
        isSwitch = true;
        text = "Switch is ON";
      });
    } else {
      setState(() {
        isSwitch = false;
        text = "Switch is OFF";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2,
              child: Switch(
                  value: isSwitch,
                  onChanged: switchandler,
                  activeColor: Color.fromARGB(11, 27, 103, 180),
                  activeTrackColor: Colors.deepPurple[300],
                  inactiveTrackColor: Colors.deepPurple[100],
                  inactiveThumbColor: Color.fromARGB(95, 20, 42, 140)),
            ),
            Text("$text")
          ],
        ),
      ),
    );
  }
}
