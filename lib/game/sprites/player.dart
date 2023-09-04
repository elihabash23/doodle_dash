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

    @override
    Future<void> onLoad() async {
      await super.onLoad();

      await add(CircleHitbox());

      await _loadCharacterSprites();
      current = PlayerState.center;
    }
    
     Future<void> _loadCharacterSprites() async {
      // Load and configure Sprite assets
      final left = await gameRef.loadSprite('game/${character.name}_left.png');
      final right = await gameRef.loadSprite('game/${character.name}_right.png');
      final center = await gameRef.loadSprite('game/${character.name}_center.png');
      final rocket = await gameRef.loadSprite('game/rocket_4.png');
      final nooglerCenter = await gameRef.loadSprite('game/${character.name}_hat_center.png');      
      final nooglerLeft = await gameRef.loadSprite('game/${character.name}_hat_left.png');
      final nooglerRight = await gameRef.loadSprite('game/${character.name}_hat_right.png');

      sprites = <PlayerState, Sprite>{
        PlayerState.left: left,
        PlayerState.right: right,
        PlayerState.center: center,
        PlayerState.rocket: rocket,
        PlayerState.nooglerLeft: nooglerLeft,
        PlayerState.nooglerRight: nooglerRight,
        PlayerState.nooglerCenter: nooglerCenter,
      };
     }

}