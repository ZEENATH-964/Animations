import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimatedOpacityWidget extends AnimatedWidget {
  const AnimatedOpacityWidget({Key?key,required Animation<double>animation}):super(key: key,listenable: animation);


  Widget build(BuildContext context){
    final animation=listenable as Animation<double>;
    return Opacity(opacity: animation.value,
    child: Container(
      height:  200,
      width: 200,
      color: Colors.blue,
      child: Center(child: Text("Hello",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
    ),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double>_animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation=Tween<double>(begin:0.2,end: 1).animate(_controller);
  }
  void startFunc(){
_controller.forward();
  }

  void reverseFunc(){
    _controller.reverse();
  }

  void resetFunc(){
    _controller.reset();
  }
  void stopFun(){
    _controller.stop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Center(child: 
    AnimatedOpacityWidget(animation: _animation,),
    
  ),
  SizedBox(height: 30,),
  Row(children: [
    ElevatedButton(onPressed: (){
      startFunc();
    }, child: Text("Start")),
    Gap(10),
    ElevatedButton(onPressed: (){
      reverseFunc();
    }, child: Text("Reverse")),
    Gap(10),
    ElevatedButton(onPressed: (){
      stopFun();
    }, child: Text("Stop")),
    Gap(10),
    ElevatedButton(onPressed: (){
     resetFunc();
    }, child: Text("Reset")),

  ],)
],),
    );
  }
}


