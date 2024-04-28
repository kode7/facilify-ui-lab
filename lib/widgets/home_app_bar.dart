import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Facilify UI Lab'),
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
