import 'package:flutter/material.dart';

// Use for common page that need action on top, title
class SimpleContainer extends StatelessWidget {
  final String title;
  final Widget? leftIcon;
  final VoidCallback? onLeftAction;
  final Widget? rightIcon;
  final VoidCallback? onRightAction;
  final bool scrollable;
  final Widget body;
  final bool isSafeArea;

  const SimpleContainer({
    required this.title,
    this.leftIcon,
    this.onLeftAction,
    this.rightIcon,
    this.onRightAction,
    this.scrollable = true,
    required this.body,
    this.isSafeArea = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
          ],
        ),
        leading: IconButton(
          icon: leftIcon ?? Icon(Icons.arrow_back),
          onPressed: onLeftAction ?? () => Navigator.pop(context),
        ),
        actions: [
          if (rightIcon != null)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: onRightAction ?? () {},
                child: rightIcon,
              ),
            ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (isSafeArea) {
      return SafeArea(
        child: scrollable ? SingleChildScrollView(child: body) : body,
      );
    } else {
      return scrollable ? SingleChildScrollView(child: body) : body;
    }
  }
}
