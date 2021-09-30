import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle get titleStyle => TextStyle(fontSize: 12, color: Colors.grey);
  TextStyle get appBarTextStyle => TextStyle(
        fontSize: 20,
        color: Color(0xff222222),
      );
  Color get colorText => Color(0xff222222);
}
