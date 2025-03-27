import 'package:flutter/material.dart';

class Animationpro extends ChangeNotifier {
  bool isLoading=false;
void animatedFunc(){
isLoading= !isLoading;
notifyListeners();

}

}