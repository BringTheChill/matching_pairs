class GameConstants {
  // Animation durations
  static const Duration cardFlipDuration = Duration(milliseconds: 300);
  static const Duration matchCheckDelay = Duration(seconds: 1);
  static const Duration staggerDelay = Duration(milliseconds: 50);
  
  // UI dimensions
  static const double cardSymbolSize = 40.0;
  static const double cardBorderRadius = 12.0;
  static const double cardBorderWidth = 3.0;
  static const double modalHandleWidth = 40.0;
  static const double modalHandleHeight = 4.0;
  
  // Game settings
  static const int gameTimeLimit = 30;
  static const int baseScore = 100;
  static const int efficiencyPenalty = 10;
  static const int timeBonusMultiplier = 10;
  static const int maxCardsSelected = 2;
  static const int defaultPairCount = 4;
  
  // Grid layout
  static const int gridCrossAxisCount = 3;
  static const double gridSpacing = 12.0;
  static const double contentPadding = 16.0;
  static const double horizontalPadding = 40.0;
  
  // Text styles
  static const double titleFontSize = 24.0;
  static const double scoreFontSize = 18.0;
  static const double statsFontSize = 16.0;
  static const double buttonFontSize = 18.0;
  
  // Default symbols
  static const List<String> defaultSymbols = ['🍌', '🍇', '🍓', '🍉'];
}