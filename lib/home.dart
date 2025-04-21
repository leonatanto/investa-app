import 'package:flutter/material.dart';
import 'package:flutter_basic/components/simple_container.dart';

//NOTE: example of usable Simple Container

class PortfolioPagez extends StatelessWidget {
  const PortfolioPagez({super.key});

  @override
  Widget build(BuildContext context) {

    return SimpleContainer(
      title: "Home Page",
      leftIcon: Icon(Icons.home),
      onLeftAction: () {
        print("Kiri action clicked");
      },
      onRightAction: () {
        print("Kanan action clicked");
      },
      rightIcon: Icon(Icons.settings),
      scrollable: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is the body content"),
              ElevatedButton(
                onPressed: () {
                  // Aksi tombol
                },
                child: Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
