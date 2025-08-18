import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_notifier.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:provider/provider.dart';

class GameTimerWidget extends StatelessWidget {
  const GameTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<MatchingPairsNotifier, ({int timeRemaining, bool isTimerActive})>(
      selector: (_, notifier) => (
        timeRemaining: notifier.state.timeRemaining,
        isTimerActive: notifier.state.isTimerActive,
      ),
      builder: (context, timerData, child) {
        final minutes = timerData.timeRemaining ~/ 60;
        final seconds = timerData.timeRemaining % 60;
        final formattedTime = '${minutes.toString().padLeft(1, '0')}:${seconds.toString().padLeft(2, '0')}';
        
        return Text(
          'Time: $formattedTime',
          style: TextStyle(
            fontSize: GameConstants.statsFontSize,
            fontWeight: FontWeight.w500,
            color: timerData.isTimerActive 
                ? (timerData.timeRemaining <= 10 ? Colors.red : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7))
                : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        );
      },
    );
  }
}