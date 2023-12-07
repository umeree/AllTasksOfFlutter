import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Column(
        children: [
          Text("Calendar"),
          TableCalendar(
              weekendDays: [DateTime.friday],
              calendarFormat: CalendarFormat.month,
              pageJumpingEnabled: true,
              calendarStyle: CalendarStyle(outsideDaysVisible: true),
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2005, 5, 15),
              lastDay: DateTime.utc(2030, 1, 5)),
        ],
      ),
    );
  }
}
