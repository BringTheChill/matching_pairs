import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_state.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:matching_pairs/core/extensions/game_theme_extensions.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardData cardData;
  final VoidCallback? onTap;
  final GameTheme? gameTheme;
  final Duration animationDelay;

  const GameCardWidget({
    required this.cardData,
    this.onTap,
    this.gameTheme,
    this.animationDelay = Duration.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Game card ${cardData.isFlipped ? cardData.symbol : 'hidden'}',
      hint: cardData.isMatched ? 'Already matched' : 'Tap to flip',
      child: GestureDetector(
        onTap: cardData.isMatched ? null : onTap,
        child: AnimatedContainer(
          duration: GameConstants.cardFlipDuration + animationDelay,
          curve: Curves.easeOutBack,
          decoration: BoxDecoration(
            color: cardData.isMatched
                ? Colors.transparent
                : gameTheme.cardColorOrDefault(context),
            borderRadius: BorderRadius.circular(GameConstants.cardBorderRadius),
            border: cardData.isFlipped 
                ? Border.all(
                    color: Theme.of(context).colorScheme.secondary, 
                    width: GameConstants.cardBorderWidth,
                  ) 
                : null,
          ),
          child: Center(
            child: _buildCardContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildCardContent() {
    if (cardData.isMatched) {
      return const SizedBox.shrink();
    } else if (cardData.isFlipped) {
      return Text(
        cardData.symbol,
        style: const TextStyle(fontSize: GameConstants.cardSymbolSize),
      );
    } else {
      return Text(
        gameTheme.cardSymbolOrDefault(),
        style: const TextStyle(fontSize: GameConstants.cardSymbolSize),
      );
    }
  }
}