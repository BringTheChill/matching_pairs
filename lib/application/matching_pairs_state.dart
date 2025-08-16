import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_pairs_state.freezed.dart';

@freezed
abstract class MatchingPairsState with _$MatchingPairsState {
  const MatchingPairsState._();

  const factory MatchingPairsState({
    @Default(0) int score,
    @Default(false) bool isGameOverByTimeout,
    @Default(false) bool isGameStarted,
    @Default(false) bool isGameCompleted,
    @Default([]) List<GameCardData> cards,
    @Default([]) List<String> selectedCardIds,
    @Default(0) int matchedPairs,
    @Default(0) int attempts,
    @Default(0) int totalPairs,
    @Default(30) int timeRemaining,
    @Default(false) bool isTimerActive
  }) = _MatchingPairsState;

  factory MatchingPairsState.initial() => const MatchingPairsState(
    score: 0,
    isGameOverByTimeout: false,
    isGameStarted: false,
    isGameCompleted: false,
    cards: [],
    selectedCardIds: [],
    matchedPairs: 0,
    attempts: 0,
    totalPairs: 0,
    timeRemaining: 30,
    isTimerActive: false
  );

  // Helper getters
  bool get canSelectMoreCards => selectedCardIds.length < 2;
  bool get hasTwoCardsSelected => selectedCardIds.length == 2;
  bool get allParisMatched => matchedPairs == totalPairs;
  String get formattedTime {
    final minutes = timeRemaining ~/ 60;
    final seconds = timeRemaining % 60;
    return '${minutes.toString().padLeft(1, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

@freezed
abstract class GameCardData with _$GameCardData {
  const factory GameCardData({
    required String id,
    required String symbol,
    @Default(false) bool isMatched,
    @Default(false) bool isFlipped,
  }) = _GameCardData;
}