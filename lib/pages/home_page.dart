import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/feed_page.dart';
import 'package:flutter_basic/pages/portfolio_page.dart';
import 'package:flutter_basic/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [FeedPage(), PortfolioPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap:
            (index) => {
              setState(() {
                _currentIndex = index;
              }),
            },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'.tr()),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'portfolio'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'profile'.tr(),
          ),
        ],
      ),
    );
  }
}
