import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
         child: ElevatedButton(
           onPressed: (){}, 
           child: const Text('Mostrar Alerta')
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}