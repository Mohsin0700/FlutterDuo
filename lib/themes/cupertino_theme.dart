import 'package:flutter/cupertino.dart';

CupertinoThemeData buildCupertinoTheme(Brightness brightness) =>
    CupertinoThemeData(
      brightness: brightness,
      primaryColor: CupertinoColors.activeBlue,
    );
