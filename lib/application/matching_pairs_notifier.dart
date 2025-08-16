import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:matching_pairs/application/matching_pairs_state.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';

class MatchingPairsNotifier extends ChangeNotifier {
  MatchingPairsState _state = MatchingPairsState.initial();
  Timer? _flipBackTimer;
  Timer? _gameTimer;

  MatchingPairsState get state => _state;

  void initialize({GameTheme? gameTheme}) {
    final symbols =  gameTheme?.symbols ?? [ '🍌', '🍇', '🍓', '🍉'];
    
    final selectedSymbols = symbols.take(4).toList();
    final List<GameCardData> cards = [];

    for (int i = 0; i < selectedSymbols.length; i++) {
      final symbol = selectedSymbols[i];
      cards.add(GameCardData(id: '${i * 2}', symbol: symbol));
      cards.add(GameCardData(id: '${i * 2 + 1}', symbol: symbol));
    }

    cards.shuffle(Random());

    _state = _state.copyWith(cards: cards, totalPairs: cards.length ~/ 2);
    notifyListeners();
  }

  void startGame() {
    _state = _state.copyWith(
      isGameStarted: true,
      isTimerActive: true,
      timeRemaining: 30,
    );
    _startTimer();
    notifyListeners();
  }

  void selectCard(String cardId) {
    // Don't allow selection if game is not started or already completed
    if (!_state.isGameStarted || _state.isGameCompleted || _state.timeRemaining <= 0) {
      return;
    }

    final card = _state.cards.firstWhere((c) => c.id == cardId);
    if (card.isMatched || card.isFlipped) return;

    if (!_state.canSelectMoreCards) return;

    _flipCard(cardId);

    final newSelectedIds = [..._state.selectedCardIds, cardId];
    _state = _state.copyWith(selectedCardIds: newSelectedIds);

    if (_state.hasTwoCardsSelected) {
      _checkForMatch();
    }

    notifyListeners();
  }

  void _flipCard(String cardId) {
    final updatedCards = _state.cards.map((card) {
      if (card.id == cardId) {
        return card.copyWith(isFlipped: true);
      }
      return card;
    }).toList();

    _state = _state.copyWith(cards: updatedCards);
  }

  void _checkForMatch() {
    if (_state.selectedCardIds.length != 2) return;

    final firstId = _state.selectedCardIds[0];
    final secondId = _state.selectedCardIds[1];

    final firstCard = _state.cards.firstWhere((c) => c.id == firstId);
    final secondCard = _state.cards.firstWhere((c) => c.id == secondId);

    final isMatch = firstCard.symbol == secondCard.symbol;

    // Increment attempts
    final newAttempts = _state.attempts + 1;

    if (isMatch) {
      // Mark cards as matched
      _markCardsAsMatched([firstId, secondId]);

      // Update score and matched pairs count
      final newScore = _state.score + 100;
      final newMatchedPairs = _state.matchedPairs + 1;

      _state = _state.copyWith(
        score: newScore,
        matchedPairs: newMatchedPairs,
        selectedCardIds: [],
        attempts: newAttempts,
      );

      // Check for game completion
      if (_state.allParisMatched) {
        _completeGame();
      }
    } else {
      // Flip back after a short delay
      _flipBackTimer?.cancel();
      _flipBackTimer = Timer(const Duration(seconds: 1), () {
        _flipCardsBack([firstId, secondId]);
        _state = _state.copyWith(selectedCardIds: [], attempts: newAttempts);
        notifyListeners();
      });
    }
  }

  void _markCardsAsMatched(List<String> cardIds) {
    final updatedCards = _state.cards.map((card) {
      if (cardIds.contains(card.id)) {
        return card.copyWith(isMatched: true, isFlipped: false);
      }
      return card;
    }).toList();

    _state = _state.copyWith(cards: updatedCards);
  }

  void _flipCardsBack(List<String> cardIds) {
    final updatedCards = _state.cards.map((card) {
      if (cardIds.contains(card.id)) {
        return card.copyWith(isFlipped: false);
      }
      return card;
    }).toList();

    _state = _state.copyWith(cards: updatedCards);
    notifyListeners();
  }

  void _completeGame() {
    _stopTimer();

    final efficiencyBonus = max(0, (100 - _state.attempts * 10));
    final timeBonus = _state.timeRemaining * 10;
    final finalScore = _state.score + efficiencyBonus + timeBonus;

    _state = _state.copyWith(isGameCompleted: true, score: finalScore);
  }

  void resetGame({GameTheme? gameTheme}) {
    _flipBackTimer?.cancel();
    _stopTimer();
    _state = MatchingPairsState.initial();
    initialize(gameTheme: gameTheme);
  }

  void _startTimer() {
    _gameTimer?.cancel();
    _gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_state.timeRemaining > 0) {
        _state = _state.copyWith(timeRemaining: _state.timeRemaining - 1);
        notifyListeners();
      } else {
        _gameOver();
      }
    });
  }

  void _stopTimer() {
    _gameTimer?.cancel();
    _state = _state.copyWith(isTimerActive: false);
  }

  void _gameOver() {
    _stopTimer();
    _state = _state.copyWith(isGameOverByTimeout: true, isGameCompleted: true);
    notifyListeners();
  }

  @override
  void dispose() {
    _flipBackTimer?.cancel();
    _gameTimer?.cancel();
    super.dispose();
  }
}