import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterduo/widgets/shared_widgets.dart';
import 'package:provider/provider.dart';
import '../core/app_state.dart';

class HomeCupertino extends StatelessWidget {
  const HomeCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppState>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('FlutterDuo — Cupertino'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => appState.toggleTheme(),
              child: const Icon(CupertinoIcons.brightness),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => appState.togglePlatform(),
              child: const Icon(Icons.phone_iphone),
            ),
          ],
        ),
      ),
      child: const SafeArea(child: DemoList()),
    );
  }
}
