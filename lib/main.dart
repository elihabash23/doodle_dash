import 'package:flutter/material.dart';
import 'game/util/util.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doodle Dash",
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.audiowideTextTheme(ThemeData.dark().textTheme),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Doodle Dash'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            constraints: const BoxConstraints(
              maxWidth: 800,
              minWidth: 550,
            ),
            // child: GameWidget(
            //   game: game,
            //   overlayBuilderMap: <String, Widget Function(BuildContext, Game)>{
            //     'gameOverlay': (context, game) => GameOverlay(game),
            //     'mainMenuOverlay': (context, game) => MainMenuOverlay(game),
            //     'gameOverOverlay': (context, game) => GameOverOverlay(game),
            //   },
            // ),
            child: const Text("GameWidget"),
          );
        }),
      ),
    );
  }
}
