import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
final options = const ['Line1', 'Line2', 'Line3'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text('List View type 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile( title: Text(game),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList(),

/*
          ListTile(
            title: Text('Hola'),
          )*/
        ],
      )
    );
  }
}