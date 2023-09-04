import 'package:doodle_dash/game/world.dart';
import 'package:flame/game.dart';

enum Character { dash, sparky }

class DoodleDash extends FlameGame {

  DoodleDash({super.children});

  final World _world = World();

    @override
  Future<void> onLoad() async {
    await add(_world);

    //await add(gameManager);

    overlays.add('gameOverlay');

    //await add(levelManager);
  }
}