import 'dart:ui';

import 'package:chesterjetpack/screens/BaseWidget.dart';
import 'package:chesterjetpack/screens/game/Player.dart';
import 'package:chesterjetpack/screens/utils/DynamicBackground.dart';
import 'package:flutter/src/gestures/tap.dart';

class PlayGround extends BaseWidget {
  BaseWidget _bg;
  Player _player;
  PlayGround() {
    _bg = DynamicBackground(5, 'play_ground/background.png');
    _player = Player();
  }
  @override
  void onTapDown(TapDownDetails detail, Function fn) {
    _player.onTapDown(detail, () {});
  }

  @override
  void render(Canvas canvas) {
    _bg.render(canvas);
    _player.render(canvas);
  }

  @override
  void resize(Size size) {
    _bg.resize(size);
    _player.resize(size);
  }

  @override
  void update() {
    _player.update();
    _bg.update();
  }
}