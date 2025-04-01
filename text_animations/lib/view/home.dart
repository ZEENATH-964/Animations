import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:text_animations/controller/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
      ),
      body: Consumer<TextProvider>(
        builder: (context,value,child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedDefaultTextStyle(child: Text("Hello"), 
                style: TextStyle(
                  fontSize: value.isLogged?40:20,color: Colors.amber
                ), 
                duration: Duration(seconds: 5)),
                Gap(10),
                ElevatedButton(onPressed: (){
                  value.textAnimation();
                }, child: Text("Click"))
              ],
            ),
          );
        }
      ),
    ));
  }
}