import 'package:flutter/material.dart';

ThemeData buildMaterialLightTheme() => ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.blue,
);

ThemeData buildMaterialDarkTheme() =>
    ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue);
