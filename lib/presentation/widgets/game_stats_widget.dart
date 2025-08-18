import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_state.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:matching_pairs/presentation/widgets/game_timer_widget.dart';

class GameStatsWidget extends StatelessWidget {
  final MatchingPairsState state;

  const GameStatsWidget({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Text(
            'Score: ${state.score}',
            style: TextStyle(
              fontSize: GameConstants.scoreFontSize,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _StatItem(
                label: 'Pairs: ${state.matchedPairs}/${state.totalPairs}',
                context: context,
              ),
              _StatItem(label: 'Attempts: ${state.attempts}', context: context),
              const GameTimerWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final BuildContext context;

  const _StatItem({required this.label, required this.context});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: GameConstants.statsFontSize,
        fontWeight: FontWeight.normal,
        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
      ),
    );
  }
}
