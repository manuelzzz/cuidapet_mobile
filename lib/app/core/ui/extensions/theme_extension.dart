import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorDark => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColor;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
