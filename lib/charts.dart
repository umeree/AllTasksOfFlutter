import "package:fl_chart/fl_chart.dart";
import 'package:flutter/material.dart';

class ChartsWidget extends StatelessWidget {
  const ChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Charts"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              child: BarChart(
                BarChartData(
                    alignment: BarChartAlignment.start,
                    maxY: 20,
                    minY: 1,
                    groupsSpace: 20,
                    barTouchData: BarTouchData(enabled: true),
                    titlesData: FlTitlesData(show: false),
                    gridData: FlGridData(show: false),
                    barGroups: [
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(toY: 13, color: Colors.blue, width: 20),
                      ]),
                      BarChartGroupData(x: 1, barRods: [
                        BarChartRodData(
                            toY: 17, color: Colors.deepPurple, width: 20)
                      ]),
                      BarChartGroupData(x: 2, barRods: [
                        BarChartRodData(toY: 8, color: Colors.pink, width: 20)
                      ]),
                      BarChartGroupData(x: 3, barRods: [
                        BarChartRodData(
                            toY: 11,
                            color: const Color.fromARGB(255, 3, 0, 9),
                            width: 20)
                      ]),
                      BarChartGroupData(x: 4, barRods: [
                        BarChartRodData(
                            toY: 15,
                            color: Color.fromARGB(255, 30, 48, 70),
                            width: 20)
                      ]),
                      BarChartGroupData(x: 5, barRods: [
                        BarChartRodData(
                            toY: 6,
                            color: Color.fromARGB(255, 11, 118, 9),
                            width: 20)
                      ]),
                      BarChartGroupData(x: 6, barRods: [
                        BarChartRodData(
                            toY: 16,
                            color: Color.fromARGB(255, 163, 140, 255),
                            width: 20)
                      ]),
                      BarChartGroupData(x: 7, barRods: [
                        BarChartRodData(
                            toY: 12,
                            color: Color.fromARGB(255, 0, 115, 255),
                            width: 20)
                      ]),
                      BarChartGroupData(x: 8, barRods: [
                        BarChartRodData(
                            toY: 10,
                            color: Color.fromARGB(255, 76, 21, 95),
                            width: 20)
                      ]),
                    ]),
              ),
            ),
          ),
        ));
  }
}
