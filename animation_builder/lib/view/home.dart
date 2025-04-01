import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with TickerProviderStateMixin {
  late AnimationController _animation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animation=AnimationController(vsync: this,duration: Duration(seconds: 3))..repeat();
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: AnimatedBuilder(animation: _animation,
         builder: (context,child){
          return Transform.rotate(angle: _animation.value*2*pi,child: child,);
         },
         child: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
         ),
         ),
      ),
    ));
  }
}