import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:matching_pairs/core/models/theme_loading_state.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';
import 'package:matching_pairs/core/themes/game_theme_service.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // Default to system theme
  ThemeLoadingState _themeLoadingState = const ThemeLoadingState();

  ThemeMode get themeMode => _themeMode;
  ThemeLoadingState get themeLoadingState => _themeLoadingState;
  bool get isLoadingThemes => _themeLoadingState.isLoading;
  String? get themeError => _themeLoadingState.error;
  List<GameTheme> get gameThemes => _themeLoadingState.themes;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  GameTheme? get currentGameTheme => _themeLoadingState.selectedTheme;

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
    _themeLoadingState = _themeLoadingState.copyWith(
      isLoading: true,
      error: null,
    );
    notifyListeners();

    try {
      final themes = await GameThemeService.getAllThemes();
      
      // If no themes loaded, provide a default theme
      final finalThemes = themes.isEmpty 
          ? [GameThemeService.getDefaultTheme()]
          : themes;
          
      _themeLoadingState = _themeLoadingState.copyWith(
        isLoading: false,
        themes: finalThemes,
        error: null,
      );
    } catch (e) {
      log("Error loading game themes: $e");
      
      // Provide default theme as fallback
      _themeLoadingState = _themeLoadingState.copyWith(
        isLoading: false,
        themes: [GameThemeService.getDefaultTheme()],
        error: 'Failed to load themes. Using default theme.',
      );
    }

    notifyListeners();
  }
  
  void retryLoadingThemes() {
    loadGameThemes();
  }

  void selectGameTheme(int index) {
    if (index >= 0 && index < _themeLoadingState.themes.length) {
      _themeLoadingState = _themeLoadingState.copyWith(selectedThemeIndex: index);
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