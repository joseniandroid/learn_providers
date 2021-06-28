import 'package:flutter/foundation.dart';

class Favorites extends ChangeNotifier {
  String fruit = 'secret';

  void changeFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
