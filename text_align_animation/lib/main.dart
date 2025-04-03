import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_align_animation/controller/provider.dart';
import 'package:text_align_animation/view/home.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlignController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}