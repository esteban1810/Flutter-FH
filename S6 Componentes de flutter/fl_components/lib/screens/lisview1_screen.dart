import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final List options = const ['mario bros','pacman','Snow Bros'];
  const ListView1Screen({Key? key}) : 
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("ListView 1")
        ),
      ),
      body:  Center(
        child: ListView(
          children: [
            ...options.map((e) => ListTile( //... se utilizan para hacer spread de una lista
              leading: const Icon(Icons.tiktok),
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text(e),
            )).toList()
          ],
        ),
         //child: Text('ListView1Screen'),
      ),
    );
  }
}