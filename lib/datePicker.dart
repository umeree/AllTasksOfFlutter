import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  // void _showDatePicker() {
  //   showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime.utc(2000),
  //       lastDate: DateTime.utc(2025));
  // }
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "$_dateTime",
                style: TextStyle(color: Colors.black),
              ),
              ElevatedButton(
                child: const Text(" Pick Date "),
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.utc(2000),
                          lastDate: DateTime.utc(2025))
                      .then((value) {
                    setState(() {
                      _dateTime = value!;
                    });
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
