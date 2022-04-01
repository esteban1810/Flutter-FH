import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Check'),
      ),
      body: SingleChildScrollView(
        child: Center(
           child: Column(
             children: [
               Slider(
                min: 0,
                max: 1000,
                activeColor: AppTheme.primaryLigthColor,
                divisions: 10,
                value: _value, 
                onChanged: (value){
                  _value = value;
                  setState(() {});
                }
              ),
              const SizedBox(height: 20,),
              Image(
                image: const NetworkImage('http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c325.png'),
                width: _value,
                // fit: BoxFit.contain,
              )
             ],
           ),
        ),
      ),
    );
  }
}