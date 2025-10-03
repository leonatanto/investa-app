import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SimpleLineChart extends StatelessWidget {
  const SimpleLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, // you can adjust height to fit your design
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 6,
          gridData: FlGridData(show: false), // no grid
          titlesData: FlTitlesData(show: false), // no labels
          borderData: FlBorderData(show: false), // no border
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 2.5),
                FlSpot(1, 1.8),
                FlSpot(2, 2),
                FlSpot(3, 2.2),
                FlSpot(4, 2.4),
                FlSpot(5, 2.8),
                FlSpot(6, 3.5),
              ],
              isCurved: true,
              color: Colors.blue, // main line color
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.blue.withOpacity(0.1), // transparent fill
              ),
            ),
          ],
        ),
      ),
    );
  }
}
