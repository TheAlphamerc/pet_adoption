import 'package:flutter/material.dart';
import 'package:pet_adoption/theme/theme.dart';

extension ThemeHelper on BuildContext {
  ThemeData get theme => Theme.of(this);
  Color get primaryColor => theme.primaryColor;
  Color get onPrimary => theme.colorScheme.onPrimary;
  Color get surfaceColor => theme.colorScheme.surface;
  TextTheme get textTheme => theme.textTheme;
  Color get bodyTextColor => theme.textTheme.bodyLarge!.color!;
  Color get disabledColor => theme.disabledColor;
  ColorScheme get colorScheme => theme.colorScheme;
  ThemeType get themeType =>
      theme.brightness == Brightness.light ? ThemeType.LIGHT : ThemeType.DARK;
  bool get isDarkMode => themeType == ThemeType.DARK;
}
