import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_notifier.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';
import 'package:provider/provider.dart';

class GameControlsWidget extends StatelessWidget {
  final bool isGameStarted;
  final bool isGameCompleted;
  final GameTheme? gameTheme;
  
  const GameControlsWidget({
    required this.isGameStarted,
    required this.isGameCompleted,
    this.gameTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isGameCompleted) {
      return const SizedBox.shrink();
    }

    final buttonText = isGameStarted ? 'Reset' : 'Start';

    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 16),
      child: ElevatedButton(
        onPressed: () {
          final notifier = context.read<MatchingPairsNotifier>();
          notifier.resetGame(gameTheme: gameTheme);
          notifier.startGame();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.error,
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(0, 48),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: GameConstants.buttonFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}