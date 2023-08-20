import 'package:flutter/material.dart';

class mandetail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
          ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('Headline'),
            subtitle: Text('Supporting text'),
            trailing: Icon(Icons.favorite_rounded),
          ),

    );
  }
}

