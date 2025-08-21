import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterduo/core/app_state.dart';
import 'package:flutterduo/screens/home_cupertino.dart';
import 'package:flutterduo/screens/home_material.dart';
import 'package:flutterduo/themes/cupertino_theme.dart';
import 'package:flutterduo/themes/material_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AppState(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    if (appState.platform == PlatformStyle.material) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Duo',
        theme: buildMaterialLightTheme(),
        darkTheme: buildMaterialDarkTheme(),
        themeMode: appState.themeMode,
        home: const HomeMaterial(),
      );
    } else {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Duo',
        theme: buildCupertinoTheme(
          appState.themeMode == ThemeMode.dark
              ? Brightness.dark
              : Brightness.light,
        ),
        home: const HomeCupertino(),
      );
    }
  }
}
