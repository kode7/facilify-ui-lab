import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/responsive_screen.dart';
import 'layouts/desktop_layout.dart';
import 'layouts/mobile_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(420, 980),
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Facilify Responsive UI Lab',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const ResponsiveScreen(
          mobileLayout:
              MobileLayout(), // Assuming MobileLayout is defined elsewhere
          desktopLayout:
              DesktopLayout(), // Assuming DesktopLayout is defined elsewhere
        ),
      ),
    );
  }
}
