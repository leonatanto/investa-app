import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/portfolio/components/chart_list_portfolio.dart';
import 'package:flutter_basic/pages/portfolio/components/header_portfolio.dart';
import 'package:flutter_basic/pages/portfolio/components/segmented_portfolio.dart';

class PortfolioSummary extends StatefulWidget {
  const PortfolioSummary({super.key});

  @override
  State<PortfolioSummary> createState() => _PortfolioSummaryState();
}

class _PortfolioSummaryState extends State<PortfolioSummary> {
  int selectedTab = 0;

  List<String> getItemsForTab(int index) {
    switch (index) {
      case 0: return ['AAPL', 'MSFT', 'TSLA'];
      case 1: return ['BTC', 'ETH', 'SOL'];
      case 2: return ['Gold Bar', 'Gold Coin'];
      default: return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = getItemsForTab(selectedTab);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const HeaderPortfolio(),
            const SizedBox(height: 16),
            const ChartListPortfolio(),
            SegmentedPortfolio(
              selectedIndex: selectedTab,
              onChanged: (index) {
                setState(() => selectedTab = index);
              },
            ),
            const SizedBox(height: 12),
            ...items.map((item) => ListTile(
              title: Text(item),
              trailing: const Icon(Icons.chevron_right),
            )),
          ],
        ),
      ),
    );
  }
}
