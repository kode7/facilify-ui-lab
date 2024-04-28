import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;

  const ResponsiveScreen(
      {super.key, required this.mobileLayout, required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        // mobile layout
        return mobileLayout;
      } else {
        // desktop layout
        return desktopLayout;
      }
    });
  }
}
