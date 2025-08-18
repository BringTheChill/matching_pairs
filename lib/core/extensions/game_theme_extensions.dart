import 'package:flutter/material.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';

extension GameThemeExtensions on GameTheme? {
  Color cardColorOrDefault(BuildContext context) {
    return this?.cardFlutterColor ?? Theme.of(context).colorScheme.primary;
  }
  
  String cardSymbolOrDefault() {
    return this?.cardSymbol ?? '';
  }
  
  List<String> symbolsOrDefault() {
    return this?.symbols ?? const ['🍌', '🍇', '🍓', '🍉'];
  }
  
  String titleOrDefault() {
    return this?.title ?? 'Matching Pairs';
  }
}