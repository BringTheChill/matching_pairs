import 'package:flutter/material.dart';
import 'package:matching_pairs/core/themes/game_theme.dart';
import 'package:matching_pairs/core/themes/theme_notifier.dart';
import 'package:provider/provider.dart';

class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (themeNotifier.isLoadingThemes)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16), 
                  child: CircularProgressIndicator()
                  ),
                ),

            if (!themeNotifier.isLoadingThemes)
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: themeNotifier.gameThemes.themes.length,
                  itemBuilder: (context, index) {
                    final theme = themeNotifier.gameThemes.themes[index];
                    final isSelected = themeNotifier.gameThemes.selectedThemeIndex == index;

                    return ThemeCard(
                      theme: theme,
                      isSelected: isSelected,
                      onTap: () => themeNotifier.selectGameTheme(index)
                    );
                  },
                  ),
              ),
          ]
        );
      },
    );
  }
}

class ThemeCard extends StatelessWidget {
  final GameTheme theme;
  final bool isSelected;
  final VoidCallback onTap;

  const ThemeCard({
    required this.theme,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 8 : 2,
      color: isSelected ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                theme.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Theme.of(context).colorScheme.onPrimaryContainer : Theme.of(context).colorScheme.onSurface,
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: theme.cardFlutterColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    theme.cardSymbol,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),

              SizedBox(height: 8),

              Expanded(
                child: Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children:
                    theme.symbols
                    .take(4)
                    .map(
                      (symbol) => Text(
                        symbol,
                        style: const TextStyle(fontSize: 16),
                      )
                    )
                    .toList(),
                )
              ),

              if (isSelected)
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.check_circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}