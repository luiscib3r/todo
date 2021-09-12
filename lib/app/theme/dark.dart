import 'package:flutter/material.dart';
import 'package:todo/app/theme/app_bar_theme.dart';

final darkTheme = ThemeData(
  appBarTheme: appBarTheme.copyWith(
    foregroundColor: Colors.white,
  ),
  brightness: Brightness.dark,
  fontFamily: 'Montserrat',
);
