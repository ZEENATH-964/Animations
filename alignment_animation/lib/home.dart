import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool alignment=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
body: Center(
  child: AnimatedAlign(alignment: alignment?Alignment.bottomLeft:Alignment.topRight,
   duration: Duration(seconds: 3),
   child: FlutterLogo(size: 50,),
   ),
),
floatingActionButton: FloatingActionButton(onPressed: (){
  setState(() {
    alignment=!alignment;
  });

},child: Icon(Icons.play_arrow),),

    ));
  }
}


