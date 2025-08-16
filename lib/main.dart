import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matching_pairs/core/themes/theme_notifier.dart';
import 'package:matching_pairs/presentation/matching_pairs_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier()..loadGameThemes(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            themeMode: themeNotifier.themeMode,
            theme: ThemeNotifier.lightTheme,
            darkTheme: ThemeNotifier.darkTheme,
            home: const MatchingPairsPage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
