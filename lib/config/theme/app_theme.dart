import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.teal,
];

class AppTheme {
  final int selectedTheme;

  AppTheme({this.selectedTheme = 0})
      : assert(selectedTheme >= 0 && selectedTheme < _colorThemes.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedTheme],
      brightness: Brightness.light,
    );
  }
}
