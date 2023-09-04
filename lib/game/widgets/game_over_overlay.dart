import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GameOverOverlay extends StatelessWidget {
  const GameOverOverlay(Game game, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Game Over Overlay",);
  }
}