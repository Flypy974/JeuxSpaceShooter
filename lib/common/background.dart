import 'package:flame/components.dart';
import 'package:space_shooter/common/star.dart';
import 'package:space_shooter/game_manager.dart';

class Background extends Component with HasGameRef<GameManager> {
  int nbStars;
  Background(this.nbStars);

  /// Ajoute des étoiles dans le menu jeux
  @override
  Future<void>? onLoad() {
    for (int i=0; i< nbStars; i++) {
      add (Star());
    }
  }
}