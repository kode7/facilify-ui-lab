import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        NavigationRail(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          selectedIndex: 0, // Current index,
          destinations: const [
            NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home_filled),
                label: Text('Home')),
            NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text('Settings')),
            NavigationRailDestination(
                icon: Icon(Icons.school), label: Text('School')),
          ],
        ),
        Expanded(
            flex: 1,
            child: Scaffold(
              appBar: const HomeAppBar(),
              body: HomeBody(),
            )),
      ],
    );
  }
}
