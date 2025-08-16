import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';
import 'package:matching_pairs/core/themes/game_theme_service.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // Default to system theme
  GameThemeCollection _gameThemes = const GameThemeCollection();
  bool _isLoadingThemes = false;

  ThemeMode get themeMode => _themeMode;
  GameThemeCollection get gameThemes => _gameThemes;
  bool get isLoadingThemes => _isLoadingThemes;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  GameTheme? get currentGameTheme => _gameThemes.selectedTheme;

  void toggleTheme() {
    switch (_themeMode) {
      case ThemeMode.light:
        _themeMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.system;
        break;
      case ThemeMode.system:
        _themeMode = ThemeMode.light;
        break;
    }
    notifyListeners();
  }

  IconData get currentThemeIcon {
    switch (_themeMode) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.brightness_auto;
    }
  }

  String get currentThemeName {
    switch (_themeMode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'Auto';
    }
  }

  Future<void> loadGameThemes() async {
    _isLoadingThemes = true;
    notifyListeners();

    try {
      final themes = await GameThemeService.getAllThemes();
      _gameThemes = GameThemeCollection(themes: themes);
    } catch (e) {
      // Handle error while loading themes
      log("Error loading game themes: $e");
      _gameThemes = const GameThemeCollection();
    }

    _isLoadingThemes = false;
    notifyListeners();
  }

  void selectGameTheme(int index) {
    if (index >= 0 && index < _gameThemes.themes.length) {
      _gameThemes = _gameThemes.copyWith(selectedThemeIndex: index);
      notifyListeners();
    }
  }

  // Light Theme
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.blue),
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.red
      ),
    )
  );

  // Dark Theme
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.blueAccent),
      titleTextStyle: TextStyle(
        color: Colors.blueAccent,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.redAccent
      ),
    )
  );
}