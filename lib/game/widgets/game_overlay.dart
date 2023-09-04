import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GameOverlay extends StatefulWidget {
  const GameOverlay(Game game, {super.key});

  @override
  State<GameOverlay> createState() => GameOverlayState();
}

class GameOverlayState extends State<GameOverlay> {
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(title: "Game Overlay",);
  }
}