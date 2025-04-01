import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: Hero(tag: "Hero", child: Container(
          height: 50,
          width: 50,
          color: Colors.amber,

        )),
        onTap: () => gotoSecondPage(context),
      ),
    );
  }
}
void gotoSecondPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: Hero(tag: "Hero", child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        )),
      ),
    );
  }));
}