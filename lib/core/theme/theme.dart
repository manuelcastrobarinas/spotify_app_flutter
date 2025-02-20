import 'package:flutter/material.dart';
import 'package:spotify_app/core/theme/app_pallete.dart';

class AppTheme {

  static OutlineInputBorder _border({required Color color}) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3.0
    ),
    borderRadius: BorderRadius.circular(10.0)
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor : Pallete.backgroundColor,
    inputDecorationTheme    : InputDecorationTheme(
      contentPadding: EdgeInsets.all(27.0),
      enabledBorder : _border(color: Pallete.borderColor),
      focusedBorder : _border(color: Pallete.gradient2)   
    ),
  );
}