import 'package:flutter/cupertino.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class HomeScrProvider with ChangeNotifier{
  var _scr = false;
  CardController cardController = CardController();

  get scr => _scr;

  set scr(value) {
    _scr = value;
    notifyListeners();
  }
}