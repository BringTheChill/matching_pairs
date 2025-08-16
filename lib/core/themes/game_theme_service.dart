import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'game_theme.dart';

class GameThemeService {
  static const String _localThemesPatch = 'lib/core/themes/theme.json';

  /// Load themes from a local JSON file
  static Future<List<GameTheme>> loadLocalThemes() async {
    try {
      final String jsonString = await rootBundle.loadString(_localThemesPatch);
      final List<dynamic> jsonList = json.decode(jsonString);

      return jsonList
              .map((json) => GameTheme.fromJson(json as Map<String, dynamic>))
              .toList();
    } catch (e) {
      log("Error loading local themes: $e");
      return [];
    }
  }

  /// Get all available themes (only local themes for now)
  static Future<List<GameTheme>> getAllThemes() async {
    return await loadLocalThemes();
  }

  /// Validate theme data structure
  static bool isValidTheme(Map<String, dynamic> json) {
    try {
      final requiredFields = ['title', 'card_symbol', 'symbols', 'card_color'];
      for (final field in requiredFields) {
        if (!json.containsKey(field)) return false;
      }

      final cardColor = json['card_color'] as Map<String, dynamic>;
      final colorFields = ['red', 'green', 'blue'];
      for (final field in colorFields) {
        if (!cardColor.containsKey(field)) return false;
        final value = cardColor[field];
        if (value is! double && value is! int) return false;
      }

      final symbols = json['symbols'];
      if (symbols is! List || symbols.isEmpty) return false;

      return true;
    } catch (e) {
      return false;
    }
  }
}