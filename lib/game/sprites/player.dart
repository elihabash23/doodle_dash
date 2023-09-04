import 'package:doodle_dash/game/doodle_dash.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

enum PlayerState { left, right, center, rocket, nooglerCenter, nooglerLeft, nooglerRight }

class Player extends SpriteGroupComponent<PlayerState> with HasGameRef<DoodleDash>, KeyboardHandler, CollisionCallbacks {

  Player({ 
    //super.position,
    required this.character,
    this.jumpSpeed = 600
  });

    Character character;
    double jumpSpeed;

}