import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get tittle => 'Cuidapet';
  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xffA8CE4B),
        primaryColorLight: const Color(0xffDDE9C7),
        primaryColorDark: const Color(0xff689F38),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffA8CE4B),
        ),
      );
}
