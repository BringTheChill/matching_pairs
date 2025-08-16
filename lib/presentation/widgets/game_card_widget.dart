import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_state.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardData cardData;
  final VoidCallback? onTap;
  final GameTheme? gameTheme;

  const GameCardWidget({
    required this.cardData,
    this.onTap,
    this.gameTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardData.isMatched ? null : onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: cardData.isMatched
              ? Colors.transparent
              : (gameTheme?.cardFlutterColor ?? Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
          border: cardData.isFlipped ? Border.all(color: Theme.of(context).colorScheme.secondary, width: 3) : null,
        ),
        child: Center(
          child: _buildCardContent(),
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
        style: const TextStyle(fontSize: 40),
      );
    } else {
      return Text(
        gameTheme?.cardSymbol ?? '',
        style: const TextStyle(fontSize: 40),
      );
    }
  }
}