import 'package:flutter/material.dart';
import 'package:matching_pairs/application/matching_pairs_notifier.dart';
import 'package:matching_pairs/core/themes/theme_notifier.dart';
import 'package:matching_pairs/core/themes/widgets/theme_selector.dart';
import 'package:matching_pairs/presentation/widgets/congratulations_overlay_widget.dart';
import 'package:matching_pairs/presentation/widgets/game_card_widget.dart';
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
        title: Consumer<ThemeNotifier>(
          builder: (context, themeNotifier, child) {
            return Text(
              themeNotifier.currentGameTheme?.title ?? 'Matching Pairs',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            );
          },
        ),
        actions: [
          Consumer<ThemeNotifier>(
            builder: (context, themeNotifier, child) {
              return IconButton(
                icon: Icon(Icons.palette, size: 24),
                tooltip: 'Select Game Theme',
                onPressed: () => _showThemeSelector(context),
              );
            },
          ),
          Consumer<ThemeNotifier>(
            builder: (context, themeNotifier, child) {
              return IconButton(
                icon: Icon(themeNotifier.currentThemeIcon, size: 24),
                tooltip: 'Theme ${themeNotifier.currentThemeName}',
                onPressed: () => themeNotifier.toggleTheme(),
              );
            },
          )
        ],
      ),
      body: Consumer<MatchingPairsNotifier>(
        builder: (context, notifier, child) {
          return Stack(
            children: [
              const MatchingPairsContent(),

              if (notifier.state.isGameCompleted)
                CongratulationsOverlayWidget(
                  isSuccess: !notifier.state.isGameOverByTimeout,
                  finalScore: notifier.state.score,
                  onDismiss: () {
                    final themeNotifier = context.read<ThemeNotifier>();
                    notifier.resetGame(
                      gameTheme: themeNotifier.currentGameTheme,
                    );
                  },
                ),
            ],
          );
        },
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
          child: Consumer<ThemeNotifier>(
            builder: (context, themeNotifier, child) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
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

                  Expanded(child: ThemeSelector()),
                ],
              );
            },
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
    return Consumer<MatchingPairsNotifier>(
      builder: (context, notifier, child) {
        final state = notifier.state;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Text(
                      'Score: ${state.score}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurface,
                      )
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Pairs: ${state.matchedPairs}/${state.totalPairs}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                        Text(
                          'Attempts: ${state.attempts}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                        Text(
                          'Time: ${state.formattedTime}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: state.cards.length,
                        itemBuilder: (context, index) {
                          final card = state.cards[index];
                          return Consumer<ThemeNotifier>(
                            builder: (context, themeNotifier, child) {
                              return GameCardWidget(
                                cardData: card,
                                gameTheme: themeNotifier.currentGameTheme,
                                onTap: () => context.read<MatchingPairsNotifier>().selectCard(card.id),
                              );
                            },
                          );
                        },
                      )
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 16, top: 16),
                      child: Consumer2<MatchingPairsNotifier, ThemeNotifier>(
                        builder: (context, matchingPairsNotifier, themeNotifier, child) {
                          final isGameStarted = matchingPairsNotifier.state.isGameStarted;
                          final isGameCompleted = matchingPairsNotifier.state.isGameCompleted;

                          if (isGameCompleted) {
                            return const SizedBox.shrink();
                          }

                          String buttonText;
                          if (!isGameStarted) {
                            buttonText = 'Start';
                          } else {
                            buttonText = 'Reset';
                          }

                          return ElevatedButton(
                            onPressed: () {
                              matchingPairsNotifier.resetGame(
                                gameTheme: themeNotifier.currentGameTheme,
                              );
                              matchingPairsNotifier.startGame();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.surface,
                              foregroundColor: Theme.of(context).colorScheme.error,
                              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(0, 48),
                            ),
                            child: Text(
                              buttonText,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}