import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardChart extends StatefulWidget {
  const DashboardChart({super.key});

  @override
  State<DashboardChart> createState() => _DashboardChartState();
}

class _DashboardChartState extends State<DashboardChart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
        swapAnimationDuration: const Duration(microseconds: 750),
        PieChartData(sections: [
          PieChartSectionData(value: 20, color: Colors.black),
          PieChartSectionData(value: 20, color: Colors.green),
          PieChartSectionData(value: 20, color: Colors.red)
        ]));
  }
}
