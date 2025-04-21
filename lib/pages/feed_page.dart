import 'package:flutter/material.dart';
import 'package:flutter_basic/helpers/text_styles.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(16),
      child: Center(child: SafeArea(child: Text("This is home", style: context.displayLarge))),
    ),);
  }
}