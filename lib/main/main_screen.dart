import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' show TextStyle, Colors;
import 'package:space_shooter/common/background.dart';
import 'package:space_shooter/game_manager.dart';

import 'text.dart';

class MainScreen extends Component with HasGameRef<GameManager> {
  final Function _onStartClicked;
  late TextComponent _playerScore;

  MainScreen(this._onStartClicked);

  @override
  Future<void>? onLoad() {
    add(Background(40));
    add(Text());

    _playerScore = TextComponent(
        text: "Score : 0",
        position: Vector2(gameRef.size.toRect().width / 2, 10),
        anchor: Anchor.topCenter,
        textRenderer: TextPaint (
          style: const TextStyle(
            fontSize: 48.0,
            color: Colors.white,
          ),
        ));
    add(_playerScore);
  }

  void onPanStart(DragStartInfo info) {
    if (isMounted) _onStartClicked();
  }

  void setScore(int score) {
    _playerScore.text = "Score : $score";
  }

}