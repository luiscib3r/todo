import 'package:flutter/material.dart';
import 'package:todo/app/theme/app_bar_theme.dart';

final lightTheme = ThemeData(
  appBarTheme: appBarTheme.copyWith(
    foregroundColor: Colors.blue,
  ),
  brightness: Brightness.light,
  accentColor: Colors.blue,
  fontFamily: 'Montserrat',
);
