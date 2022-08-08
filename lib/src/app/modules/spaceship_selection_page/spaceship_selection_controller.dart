import 'package:flutter/foundation.dart';
import 'package:global_solution/src/app/model/spaceship.dart';

class SpaceshipSelectionController extends ChangeNotifier {
  selectSpaceship(Spaceship? spaceship, String naveEscolhida) {
    String fraseSucesso;

    if (spaceship == Spaceship.Gemini) {
      naveEscolhida = 'Gemini';
    } else if (spaceship == Spaceship.Vostok) {
      naveEscolhida = 'Vostok';
    } else if (spaceship == Spaceship.Mercury) {
      naveEscolhida = 'Mercury';
    } else if (spaceship == Spaceship.Voskhod) {
      naveEscolhida = 'Voskhod';
    } else {
      naveEscolhida = 'Soyuz';
    }
    fraseSucesso = 'Nave escolhida com sucesso: $naveEscolhida';

    notifyListeners();

    return fraseSucesso;
  }
}
