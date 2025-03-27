import 'package:animation_one/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Animationpro>(
        builder: (context, value, child) => 
         Center(
           child: GestureDetector(onTap: (){value.animatedFunc();},
           child: AnimatedContainer(duration: Duration(seconds: 3)
           ,height:value.isLoading? 200 : 50 ,width: value.isLoading? 200 : 50,color:  value.isLoading? Colors.amber :Colors.pink,)),
         )),
    );
  }
}