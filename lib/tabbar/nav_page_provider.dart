import 'package:flutter/material.dart';

class NavPage with ChangeNotifier {

  int _indicepage=0;

  get page{
    return _indicepage;
  }

  set page(int numero){
    this._indicepage=numero;
    notifyListeners();
  }
}