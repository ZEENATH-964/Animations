import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_animations/controller/provider.dart';
import 'package:text_animations/view/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TextProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}