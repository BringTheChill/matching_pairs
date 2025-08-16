import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_theme.freezed.dart';
part 'game_theme.g.dart';

@freezed
abstract class GameTheme with _$GameTheme {
  const GameTheme._();

  const factory GameTheme({
    required String title,
    @JsonKey(name: 'card_symbol') required String cardSymbol,
    required List<String> symbols,
    @JsonKey(name: 'card_color') required GameThemeColor cardColor
  }) = _GameTheme;

  factory GameTheme.fromJson(Map<String, dynamic> json) => _$GameThemeFromJson(json);

  Color get cardFlutterColor => Color.fromRGBO(
      (cardColor.red * 255).round(),
      (cardColor.green * 255).round(),
      (cardColor.blue * 255).round(),
      1.0
    );
}

@freezed
abstract class GameThemeColor with _$GameThemeColor {
  const factory GameThemeColor({
    required double red,
    required double green,
    required double blue,
  }) = _GameThemeColor;

  factory GameThemeColor.fromJson(Map<String, dynamic> json) => _$GameThemeColorFromJson(json);
}

@freezed
abstract class GameThemeCollection with _$GameThemeCollection {
  const GameThemeCollection._();

  const factory GameThemeCollection({
    @Default([]) List<GameTheme> themes,
    @Default(0) int selectedThemeIndex
  }) = _GameThemeCollection;

  factory GameThemeCollection.fromJson(Map<String, dynamic> json) => _$GameThemeCollectionFromJson(json);

  GameTheme? get selectedTheme =>
      themes.isNotEmpty ? themes[selectedThemeIndex] : null;
}