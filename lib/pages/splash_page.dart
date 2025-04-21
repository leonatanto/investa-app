import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      // Get.offAll(HomePage());
    });

    return Scaffold(body: Center(child: Text('Base Splash Screen')));
  }
}
