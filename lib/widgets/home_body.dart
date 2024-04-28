import 'package:flutter/material.dart';

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
