import 'package:flutter/material.dart';

class AlignController extends ChangeNotifier {
  bool isRight=false;
  void alignFun(){
    isRight=!isRight;
    notifyListeners();
  }
}