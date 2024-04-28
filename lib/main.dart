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
        home: const ResponsiveLayout(
          mobileLayout:
              MobileLayout(), // Assuming MobileLayout is defined elsewhere
          desktopLayout:
              DesktopLayout(), // Assuming DesktopLayout is defined elsewhere
        ),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;

  const ResponsiveLayout(
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

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: const HomeAppBar(),
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Responsive UI Lab'),
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      actions: _buildActions(context),
    );
  }

  List<Widget> _buildActions(context) {
    // Check if the screen width is less than 800
    bool isWideScreen = MediaQuery.of(context).size.width >= 800;

    if (isWideScreen) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'favorite',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'favorite',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'favorite',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'favorite',
          onPressed: () {},
        ),
      ];
    } else {
      return <Widget>[
        PopupMenuButton<String>(
          onSelected: (String result) {
            // Führen Sie hier Aktionen basierend auf der ausgewählten Option durch
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'favorite1',
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Favorit 1'),
              ),
            ),
            const PopupMenuItem<String>(
              value: 'favorite2',
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Favorit 2'),
              ),
            ),
          ],
        ),
      ];
    }
  }
}

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  final List<String> items = ['Daten 1', 'Daten 2', 'Daten 3', 'Daten 4'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
