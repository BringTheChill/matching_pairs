// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameTheme _$GameThemeFromJson(Map<String, dynamic> json) => _GameTheme(
  title: json['title'] as String,
  cardSymbol: json['card_symbol'] as String,
  symbols: (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
  cardColor: GameThemeColor.fromJson(
    json['card_color'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GameThemeToJson(_GameTheme instance) =>
    <String, dynamic>{
      'title': instance.title,
      'card_symbol': instance.cardSymbol,
      'symbols': instance.symbols,
      'card_color': instance.cardColor,
    };

_GameThemeColor _$GameThemeColorFromJson(Map<String, dynamic> json) =>
    _GameThemeColor(
      red: (json['red'] as num).toDouble(),
      green: (json['green'] as num).toDouble(),
      blue: (json['blue'] as num).toDouble(),
    );

Map<String, dynamic> _$GameThemeColorToJson(_GameThemeColor instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
    };

_GameThemeCollection _$GameThemeCollectionFromJson(Map<String, dynamic> json) =>
    _GameThemeCollection(
      themes:
          (json['themes'] as List<dynamic>?)
              ?.map((e) => GameTheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedThemeIndex: (json['selectedThemeIndex'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GameThemeCollectionToJson(
  _GameThemeCollection instance,
) => <String, dynamic>{
  'themes': instance.themes,
  'selectedThemeIndex': instance.selectedThemeIndex,
};
