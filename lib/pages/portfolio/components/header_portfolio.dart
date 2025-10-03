import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/helpers/text_styles.dart';

class HeaderPortfolio extends StatefulWidget {
  const HeaderPortfolio({super.key});

  @override
  State<HeaderPortfolio> createState() => _HeaderPortfolioState();
}

class _HeaderPortfolioState extends State<HeaderPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween , children: [ Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Portfolio", style: context.displayMedium),
        Text("Mon, 21 April 2025", style: context.bodyMedium)
      ],
    ), Row(
      spacing: 16,
      children: [
        Icon(Icons.notifications, color: CupertinoColors.systemGrey), Icon(Icons.filter, color: CupertinoColors.systemGrey),
      ],
    ) ],);
  }
}