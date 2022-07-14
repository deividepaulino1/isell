import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  var light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
    primaryColor: Colors.grey[100],
    accentColor: Colors.grey[800],
    backgroundColor: Colors.grey[800],
    fontFamily: 'principal',
  );

  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
    primaryColor: Colors.grey[800],
    accentColor: Colors.grey[100],
    fontFamily: 'principal',
  );

  bool _tipoTema = false;

  isDark() => _tipoTema;

  setDarkMode(bool status) {
    _tipoTema = status;
    notifyListeners();
  }
}
