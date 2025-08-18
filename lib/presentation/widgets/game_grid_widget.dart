import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matching_pairs/application/matching_pairs_notifier.dart';
import 'package:matching_pairs/application/matching_pairs_state.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';
import 'package:matching_pairs/presentation/widgets/game_card_widget.dart';
import 'package:provider/provider.dart';

class GameGridWidget extends StatelessWidget {
  final List<GameCardData> cards;
  final GameTheme? gameTheme;
  
  const GameGridWidget({
    required this.cards,
    this.gameTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: GameConstants.contentPadding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: GameConstants.gridCrossAxisCount,
          crossAxisSpacing: GameConstants.gridSpacing,
          mainAxisSpacing: GameConstants.gridSpacing,
        ),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return GameCardWidget(
            key: ValueKey(card.id),
            cardData: card,
            gameTheme: gameTheme,
            animationDelay: Duration(
              milliseconds: index * GameConstants.staggerDelay.inMilliseconds,
            ),
            onTap: () {
              HapticFeedback.selectionClick();
              context.read<MatchingPairsNotifier>().selectCard(card.id);
            },
          );
        },
      ),
    );
  }
}