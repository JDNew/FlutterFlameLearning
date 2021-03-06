import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter_flame_learning/chapter2/component/fly.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

class MachoFly extends Fly {
  MachoFly({LangawGame game, double x, double y}) : super(game: game) {
    flyingSprite = List();
    flyingSprite.add(Sprite("flies/macho-fly-1.png"));
    flyingSprite.add(Sprite("flies/macho-fly-2.png"));
    deadSprite = Sprite("flies/macho-fly-dead.png");
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 2.025, game.tileSize * 2.025);
  }

  @override
  double get speed => game.tileSize * 2.5;
}
