import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _height = 50.0;
  double _width = 50.0;
  Color _color = Colors.black;
  BorderRadius _borderRadius = BorderRadius.circular(18);

  changeShape(){
    Random random = Random();
    _height = random.nextInt(300).toDouble()+70;
    _width = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
      random.nextInt(250), 
      random.nextInt(250), 
      random.nextInt(250), 
      1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body:  Center(
         child: AnimatedContainer(
           curve: Curves.easeOutBack,
           duration: const Duration(milliseconds: 1000),
           height: _height,
           width: _width,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadius
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_sharp),
      )
    );
  }
}