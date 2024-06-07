import 'package:flutter/material.dart';

const colorlist = <Color>[
  Colors.blue,
  Colors.pink,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.yellow,
  Colors.teal,
  Colors.green
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0, 'El color seleccionado debe ser mayor que 0'),
        assert(selectedColor < colorlist.length,
            'El color seleccionado debe ser mayor o igual que el ${colorlist.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: false,
      colorSchemeSeed: colorlist[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
