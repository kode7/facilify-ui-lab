import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        home: const ResponsiveHomePage(),
      ),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI Lab'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.star),
            tooltip: 'favorite',)
        ],
      ),
      
      body: const Text('body'),
    );
  }
}
