import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_notifier.dart';
import 'package:matching_pairs/core/constants/game_constants.dart';
import 'package:matching_pairs/core/extensions/game_theme_extensions.dart';
import 'package:matching_pairs/core/themes/theme_notifier.dart';
import 'package:matching_pairs/core/themes/widgets/theme_selector.dart';
import 'package:matching_pairs/presentation/widgets/congratulations_overlay_widget.dart';
import 'package:matching_pairs/presentation/widgets/error_widget.dart';
import 'package:matching_pairs/presentation/widgets/game_controls_widget.dart';
import 'package:matching_pairs/presentation/widgets/game_grid_widget.dart';
import 'package:matching_pairs/presentation/widgets/game_stats_widget.dart';
import 'package:provider/provider.dart';

class MatchingPairsPage extends StatelessWidget {
  const MatchingPairsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final themeNotifier = context.read<ThemeNotifier>();
        final matchingPairsNotifier = MatchingPairsNotifier();
        matchingPairsNotifier.initialize(
          gameTheme: themeNotifier.currentGameTheme,
        );
        return matchingPairsNotifier;
      },
      child: const MatchingPairsView(),
    );
  }
}

class MatchingPairsView extends StatelessWidget {
  const MatchingPairsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Selector<ThemeNotifier, String>(
          selector: (_, notifier) => notifier.currentGameTheme.titleOrDefault(),
          builder: (context, title, child) {
            return Text(
              title,
              style: TextStyle(
                fontSize: GameConstants.titleFontSize,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.palette, size: 24),
            tooltip: 'Select Game Theme',
            onPressed: () => _showThemeSelector(context),
          ),
          Selector<ThemeNotifier, ({IconData icon, String name})>(
            selector: (_, notifier) => (
              icon: notifier.currentThemeIcon,
              name: notifier.currentThemeName,
            ),
            builder: (context, themeData, child) {
              return IconButton(
                icon: Icon(themeData.icon, size: 24),
                tooltip: 'Theme ${themeData.name}',
                onPressed: () => context.read<ThemeNotifier>().toggleTheme(),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          const MatchingPairsContent(),
          Selector<MatchingPairsNotifier, ({bool isCompleted, bool isTimeout, int score})>(
            selector: (_, notifier) => (
              isCompleted: notifier.state.isGameCompleted,
              isTimeout: notifier.state.isGameOverByTimeout,
              score: notifier.state.score,
            ),
            builder: (context, gameData, child) {
              if (!gameData.isCompleted) return const SizedBox.shrink();
              
              return CongratulationsOverlayWidget(
                isSuccess: !gameData.isTimeout,
                finalScore: gameData.score,
                onDismiss: () {
                  final themeNotifier = context.read<ThemeNotifier>();
                  final gameNotifier = context.read<MatchingPairsNotifier>();
                  gameNotifier.resetGame(gameTheme: themeNotifier.currentGameTheme);
                },
              );
            },
          ),
        ],
      ),
      );
  }

  void _showThemeSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: const ThemeSelectorSheet(),
      ),
    );
  }
}

class ThemeSelectorSheet extends StatelessWidget {
  const ThemeSelectorSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8),
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(2),
          ),
        ),

        // Theme selector
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Game Theme',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Selector<ThemeNotifier, ({bool isLoading, String? error})>(
                  selector: (_, notifier) => (
                    isLoading: notifier.isLoadingThemes,
                    error: notifier.themeError,
                  ),
                  builder: (context, themeState, child) {
                    if (themeState.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    
                    if (themeState.error != null) {
                      return GameErrorWidget(
                        message: themeState.error!,
                        onRetry: () => context.read<ThemeNotifier>().retryLoadingThemes(),
                      );
                    }
                    
                    return const ThemeSelector();
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MatchingPairsContent extends StatelessWidget {
  const MatchingPairsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GameConstants.horizontalPadding),
      child: Column(
        children: [
          // Game stats - using Consumer to ensure timer updates
          Consumer<MatchingPairsNotifier>(
            builder: (context, notifier, child) {
              return GameStatsWidget(state: notifier.state);
            },
          ),
          
          const SizedBox(height: 24),

          // Game grid and controls
          Expanded(
            child: Column(
              children: [
                // Game grid
                Consumer2<MatchingPairsNotifier, ThemeNotifier>(
                  builder: (context, gameNotifier, themeNotifier, child) {
                    return GameGridWidget(
                      cards: gameNotifier.state.cards,
                      gameTheme: themeNotifier.currentGameTheme,
                    );
                  },
                ),

                // Game controls
                Consumer2<MatchingPairsNotifier, ThemeNotifier>(
                  builder: (context, gameNotifier, themeNotifier, child) {
                    return GameControlsWidget(
                      isGameStarted: gameNotifier.state.isGameStarted,
                      isGameCompleted: gameNotifier.state.isGameCompleted,
                      gameTheme: themeNotifier.currentGameTheme,
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}