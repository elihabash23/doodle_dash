import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MainMenuOverlay extends StatefulWidget {
  const MainMenuOverlay(Game game, {super.key});

  @override
  State<MainMenuOverlay> createState() => MainMenuOverlayState();
}

class MainMenuOverlayState extends State<MainMenuOverlay> {
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(title: "Main Menu Overlay",);
  }
}