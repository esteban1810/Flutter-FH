import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 0;
  bool _check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Check'),
      ),
      body: Center(
         child: Column(
           children: [
            //  const SizedBox(height: 300,),
             Slider.adaptive(
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
            // Checkbox(
            //   value: _check, 
            //   onChanged: (value){
            //     if(value==null){
            //       _check = false;
            //     } else {
            //       _check = value?true:false;
            //     }
            //     setState(() {});
            //   }
            // ),

            // CheckboxListTile(
            //   activeColor: AppTheme.primaryLigthColor,
            //   value: _check, 
            //   onChanged: (value){
            //     if(value==null){
            //       _check = false;
            //     } else {
            //       _check = value?true:false;
            //     }
            //     setState(() {});
            //   }
            // ),



            // Switch(
            //   activeColor: AppTheme.primaryLigthColor,
            //   value: _check, 
            //   onChanged: (value){
            //     _check = value;
            //     setState(() {});
            //   }
            // ),


            SwitchListTile.adaptive(
              title: const Text('Está ok?',textAlign: TextAlign.right,),
              activeColor: AppTheme.primaryLigthColor,
              value: _check, 
              onChanged: (value){
                _check = value;
                setState(() {});
              }
            ),

            const AboutListTile(),

            const SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('http://pngimg.com/uploads/batman/batman_PNG51.png'),
                  width: _value,
                  fit: BoxFit.contain,
                ),
              ),
            )
           ],
         ),
      ),
    );
  }
}