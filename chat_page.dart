import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("this is home page"),),
      body: Center(
        child: Text("this is home page"),
      ),
    );
  }
}

