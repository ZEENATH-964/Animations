import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  bool isLogged=false;
  void textAnimation(){
    isLogged=!isLogged;
    notifyListeners();
  }
}