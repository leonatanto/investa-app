import 'package:flutter/material.dart';
import 'package:flutter_basic/helpers/text_styles.dart';
import 'package:flutter_basic/pages/portfolio/components/chart.dart';

class ChartListPortfolio extends StatefulWidget {
  const ChartListPortfolio({super.key});

  @override
  State<ChartListPortfolio> createState() => _ChartListPortfolioState();
}

class _ChartListPortfolioState extends State<ChartListPortfolio> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            child: Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Bitcoin", style: context.bodyMedium), Text("Rp 1231", style: context.bodySmall), SimpleLineChart()]),
            ),
          ),
            Card(
            child: Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Bitcoin", style: context.bodyMedium), Text("Rp 1231", style: context.bodySmall), SimpleLineChart()]),
            ),
          ),
             Card(
            child: Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Bitcoin", style: context.bodyMedium), Text("Rp 1231", style: context.bodySmall), SimpleLineChart()]),
            ),
          ),
          Card(
            child: Container(
              width: 140,
              height: 100,
              padding: const EdgeInsets.all(12),
              child: Column(children: [Text("data")]),
            ),
          ),
        ],
      ),
    );
  }
}
