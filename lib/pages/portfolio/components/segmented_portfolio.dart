import 'package:flutter/material.dart';

class SegmentedPortfolio extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const SegmentedPortfolio({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  State<SegmentedPortfolio> createState() => _SegmentedPortfolioState();
}

class _SegmentedPortfolioState extends State<SegmentedPortfolio> {
  @override
  Widget build(BuildContext context) {
    final tabs = ['Stocks', 'Crypto', 'Gold'];

    return Container(
      height: 44,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final isSelected = widget.selectedIndex == index;

          return Expanded(
            child: GestureDetector(
              onTap: () => widget.onChanged(index),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: Container(
                  key: ValueKey(isSelected),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: isSelected ? Colors.black : Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
