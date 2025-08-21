import 'package:flutter/material.dart';

enum PlatformStyle { material, cupertino }

class AppState extends ChangeNotifier {
  PlatformStyle platform = PlatformStyle.material;
  ThemeMode themeMode = ThemeMode.light;

  void togglePlatform() {
    platform = platform == PlatformStyle.material
        ? PlatformStyle.cupertino
        : PlatformStyle.material;
    notifyListeners();
  }

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
