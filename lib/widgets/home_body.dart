import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  final List<String> items = [
    'Element 1',
    'Element 2',
    'Element 3',
    'Element 4'
  ];

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
              subtitle: const Text('This is a nice ling subtitle!'),
              leading: const Icon(Icons.abc_sharp),
              trailing: IconButton(
                icon: const Icon(Icons.explicit),
                onPressed: () {},
              ),
              isThreeLine: false,
              dense: false,
              visualDensity: VisualDensity(horizontal: -2, vertical: -2),
            );
          },
        ),
      ),
    );
  }
}
