import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_align_animation/controller/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<AlignController>(
        builder: (context,value,child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AnimatedAlign(alignment:value.isRight?Alignment.topCenter:Alignment.centerLeft ,
               duration: Duration(seconds: 3),
               child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Text("Hello Flutter",style: TextStyle(
                color: Colors.green,fontSize: 20
               ),),),
               ),
               ElevatedButton(onPressed: (){value.alignFun();}, child: Text("click"))
            ],),
          );
        }
      ),
    );
  }
}