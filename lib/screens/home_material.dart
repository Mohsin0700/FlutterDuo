import 'package:flutter/material.dart';
import 'package:flutterduo/core/app_state.dart';
import 'package:flutterduo/widgets/shared_widgets.dart';
import 'package:provider/provider.dart';

class HomeMaterial extends StatelessWidget {
  const HomeMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterDuo - Material"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => appState.toggleTheme(),
          ),
          IconButton(
            icon: const Icon(Icons.phone_iphone),
            onPressed: () => appState.togglePlatform(),
          ),
        ],
      ),
      body: const DemoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
