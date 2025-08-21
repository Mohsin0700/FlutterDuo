import 'package:flutter/material.dart';

class DemoList extends StatelessWidget {
  const DemoList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => 'Demo item ${i + 1}');
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      itemBuilder: (_, i) => DemoCard(title: items[i]),
    );
  }
}

class DemoCard extends StatelessWidget {
  final String title;
  const DemoCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // This will adapt automatically (Material/Cupertino) for basic widgets
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: const Text('Subtitle'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
