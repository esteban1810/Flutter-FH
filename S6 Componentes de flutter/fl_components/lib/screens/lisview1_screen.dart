import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
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
          children: const [
            Text('ESTAMOS'),
            Text('HACIENDO'),
            Text('PRUEBAS')
          ],
        ),
         //child: Text('ListView1Screen'),
      ),
    );
  }
}