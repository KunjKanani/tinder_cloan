import 'package:flutter/cupertino.dart';

class BoardingProvider with ChangeNotifier{
  double _topProgressBar = 0.16;
  PageController pageController = PageController();
  bool _showGender = false;
  String _gender;


  String get gender => _gender;

  set gender(String value) {
    _gender = value;
    notifyListeners();
  }

  bool get showGender => _showGender;

  set showGender(bool value) {
    _showGender = value;
    notifyListeners();
  }

  double get topProgressBar => _topProgressBar;

  set topProgressBar(double value) {
    _topProgressBar = value;
    notifyListeners();
  }
}