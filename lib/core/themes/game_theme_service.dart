import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'game_theme.dart';

class GameThemeService {
  static const String _localThemesPatch = 'lib/core/themes/theme.json';
  static const String _firebaseThemesUrl = 'https://firebasestorage.googleapis.com/v0/b/concentrationgame-20753.appspot.com/o/themes.json?alt=media&token=6898245a-0586-4fed-b30e-5078faeba078';

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

  /// Load themes from Firebase URL
  static Future<List<GameTheme>> loadFirebaseThemes() async {
    try {
      final response = await http.get(Uri.parse(_firebaseThemesUrl));
      
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList
                .map((json) => GameTheme.fromJson(json as Map<String, dynamic>))
                .toList();
      } else {
        log("Failed to load Firebase themes: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      log("Error loading Firebase themes: $e");
      return [];
    }
  }

  /// Get all available themes (combines local and Firebase themes)
  static Future<List<GameTheme>> getAllThemes() async {
    final List<GameTheme> allThemes = [];
    
    // Load local themes first
    // final localThemes = await loadLocalThemes();
    // allThemes.addAll(localThemes);
    
    // Load Firebase themes
    final firebaseThemes = await loadFirebaseThemes();
    allThemes.addAll(firebaseThemes);
    
    return allThemes;
  }

  /// Get fallback theme using default constants
  static GameTheme getDefaultTheme() {
    return GameTheme(
      title: 'Default Theme',
      cardSymbol: '❓',
      symbols: GameConstants.defaultSymbols,
      cardColor: const GameThemeColor(red: 0.2, green: 0.6, blue: 1.0),
    );
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
      
      // Ensure we have at least the minimum required symbols for the game
      if (symbols.length < GameConstants.defaultPairCount) return false;

      return true;
    } catch (e) {
      return false;
    }
  }
}