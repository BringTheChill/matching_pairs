import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';

part 'theme_loading_state.freezed.dart';

@freezed
abstract class ThemeLoadingState with _$ThemeLoadingState {
  const ThemeLoadingState._();
  
  const factory ThemeLoadingState({
    @Default(false) bool isLoading,
    @Default([]) List<GameTheme> themes,
    @Default(0) int selectedThemeIndex,
    String? error,
  }) = _ThemeLoadingState;
  
  GameTheme? get selectedTheme =>
      themes.isNotEmpty && selectedThemeIndex < themes.length 
          ? themes[selectedThemeIndex] 
          : null;
          
  bool get hasError => error != null;
  bool get hasThemes => themes.isNotEmpty;
}