import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

import 'fly.dart';

class AgileFly extends Fly {
  AgileFly({LangawGame game, double x, double y}) : super(game: game) {
    flyingSprite = List();
    flyingSprite.add(Sprite("flies/agile-fly-1.png"));
    flyingSprite.add(Sprite("flies/agile-fly-2.png"));
    deadSprite = Sprite("flies/agile-fly-dead.png");
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.5, game.tileSize * 1.5);
  }

  @override
  double get speed => game.tileSize * 5;
}
