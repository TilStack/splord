import 'package:flutter/material.dart';
import 'theme_constant.dart';

class ThemeProvider with ChangeNotifier {
  // Classe pour la gestion du theme de l'application.
  bool _isSelected = false;
  bool get isSelected => _isSelected;
  // Getters et Setters pour le changement du theme.
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  void toggleTheme() {
    // Fonction pour le changement du theme de la machine.
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    _isSelected = !_isSelected;
    notifyListeners(); // Notifier les listeners du changement du theme.
  }
}